import 'package:Blackout/models/unit/unit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

typedef UnitCallback(UnitEnum unit);

class UnitWidget extends StatefulWidget {
  final UnitEnum initialUnit;
  final UnitCallback callback;
  final bool static;

  UnitWidget({Key key, @required this.callback, @required this.initialUnit, this.static = false}) : super(key: key);

  @override
  _UnitWidgetState createState() => _UnitWidgetState();
}

class _UnitWidgetState extends State<UnitWidget> {
  UnitEnum _unit;

  @override
  void initState() {
    super.initState();
    _unit = widget.initialUnit ?? UnitEnum.values[0];
  }

  @override
  Widget build(BuildContext context) {
    return widget.static
        ? Text(describeEnum(_unit))
        : Center(
            child: DropdownButton<UnitEnum>(
              items: UnitEnum.values.map((u) => DropdownMenuItem(value: u, child: Text(describeEnum(u)))).toList(),
              onChanged: (unit) {
                setState(() {
                  _unit = unit;
                });
                widget.callback(unit);
              },
              value: _unit,
            ),
          );
  }
}