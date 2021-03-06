import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../models/unit/unit.dart';
import '../checkable/checkable.dart';

typedef RefillLimitCallback = void Function(double amount, bool error);

class RefillLimitWidget extends StatefulWidget {
  final UnitEnum initialUnit;
  final double initialRefillLimit;
  final RefillLimitCallback callback;

  const RefillLimitWidget({
    Key key,
    @required this.initialUnit,
    @required this.callback,
    @required this.initialRefillLimit,
  }) : super(key: key);

  @override
  _RefillLimitWidgetState createState() => _RefillLimitWidgetState();
}

class _RefillLimitWidgetState extends State<RefillLimitWidget> {
  TextEditingController _controller;
  String _errorText;
  UnitEnum _unit;
  bool _checked;

  @override
  void initState() {
    super.initState();
    _unit = widget.initialUnit;
    _checked = widget.initialRefillLimit != null;
    _controller = TextEditingController(text: UnitConverter.toScientific(Amount.fromSi(widget.initialRefillLimit, _unit)).toString().trim());
    _controller.addListener(invokeCallback);
  }

  void invokeCallback() {
    if (_checked) {
      var input = _controller.text.trim();
      double value;
      try {
        if (input == "") {
          setState(() {
            _errorText = S.of(context).WARN_REFILL_LIMIT_MUST_NOT_BE_EMPTY;
          });
        } else {
          value = UnitConverter.toSi(Amount.fromInput(input, _unit)).value;
          setState(() {
            _errorText = value == null ? S.of(context).WARN_AMOUNT_COULD_NOT_BE_PARSED(_controller.text) : null;
          });
        }
        // ignore: avoid_catching_errors
      } on NoSuchMethodError {
        setState(() {
          _errorText = S.of(context).WARN_AMOUNT_COULD_NOT_BE_PARSED(_controller.text);
        });
      } finally {
        widget.callback(value, _errorText != null);
      }
    } else {
      widget.callback(null, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Checkable(
            initialChecked: _checked,
            checkedCallback: (context) => Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: S.of(context).GROUP_MINIMUM_AMOUNT,
                        errorText: _errorText,
                      ),
                      controller: _controller,
                    ),
                  ),
                ],
              ),
            ),
            uncheckedCallback: (context) => Expanded(
              child: Text(
                S.of(context).GROUP_MINIMUM_AMOUNT,
                textAlign: TextAlign.center,
              ),
            ),
            callback: (checked) {
              setState(() {
                _checked = checked;
                invokeCallback();
              });
            },
          ),
        ),
      ),
    );
  }
}
