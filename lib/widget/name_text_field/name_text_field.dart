import 'package:Blackout/generated/l10n.dart';
import 'package:flutter/material.dart';

typedef void NameCallback(String name);

class NameTextField extends StatefulWidget {
  final String initialValue;
  final NameCallback callback;

  NameTextField({Key key, @required this.initialValue, @required this.callback}) : super(key: key);

  @override
  _NameTextFieldState createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  TextEditingController _controller = TextEditingController();
  bool _error;

  void callCallback(String value) {
    if (value == "") {
      setState(() {
        _error = false;
      });
      widget.callback(null);
    } else {
      setState(() {
        _error = true;
      });
      widget.callback(value);
    }
  }

  @override
  void initState() {
    super.initState();
    _controller.text = widget.initialValue.trim();
    _error = _controller.text == null;
    _controller.addListener(() {
      callCallback(_controller.text.trim());
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: S.of(context).singular,
        errorText: _error ? S.of(context).nameMustNotBeEmpty : null,
      ),
    );
  }
}