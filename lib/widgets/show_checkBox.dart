import 'package:flutter/material.dart';
import 'package:pedidosEmbramaco/models/compostos.dart';
import '../models/compostos_list.dart';
import 'package:pedidosEmbramaco/widgets/checkBox.dart';

class ShowCheckBox extends StatelessWidget {
  ShowCheckBox({
    this.composto,
  });
  final List<CompostosList> composto;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(30),
      elevation: 5,
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              ListView.builder(
                  itemCount: 1,
                  itemBuilder: (_, int index) {
                    return CheckBoxWidget(
                      item: composto[index],
                    );
                  }),
            ],
          )
        ],
      ),
    );
  }
}
