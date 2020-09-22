import 'package:flutter/material.dart';
import 'package:pedidosEmbramaco/models/compostos_list.dart';

import '../models/compostos.dart';

class CheckBoxWidget extends StatefulWidget {
  CheckBoxWidget({this.item});
  final CompostosList item;

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        widget.item.codigo,
      ),
      value: widget.item.checked,
      onChanged: (bool value) {
        setState(() {
          widget.item.checked = value;
        });
      },
    );
  }
}
