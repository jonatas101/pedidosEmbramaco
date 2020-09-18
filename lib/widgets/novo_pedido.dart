import 'package:flutter/material.dart';

class NovoPedido extends StatefulWidget {
  @override
  _NovoPedidoState createState() => _NovoPedidoState();
}

class _NovoPedidoState extends State<NovoPedido> {
  final compostoInputController = TextEditingController();
  final volumeInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(30),
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Composto'),
              controller: compostoInputController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Volume'),
              controller: volumeInputController,
            ),
            FlatButton(
              child: Text('Add Pedido'),
              textColor: Colors.grey,
              onPressed: () {
                print(compostoInputController.text);
                print(volumeInputController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
