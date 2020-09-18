import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

import './itens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('pt-br', null);
    return MaterialApp(
      title: 'Embramaco',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Item> pedidos = [
    Item(
      id: 'p1',
      composto: 'ET-121/7138',
      volume: 30.000,
      date: DateTime.now(),
    ),
    Item(
      id: 'p2',
      composto: 'ET-129/7617',
      volume: 20.000,
      date: DateTime.now(),
    ),
  ];

  final compostoInputController = TextEditingController();
  final volumeInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Embramaco'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART!'),
              elevation: 5,
            ),
          ),
          Card(
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
          ),
          Column(
            children: pedidos.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueGrey[800],
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '${tx.composto}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.indigo[900],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${tx.volume}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          DateFormat('yMEd', 'pt-br').format(tx.date),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
