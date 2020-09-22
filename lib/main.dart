import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:pedidosEmbramaco/widgets/novo_pedido.dart';

import 'models/pedido.dart';

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
  final List<Pedido> pedidos = [
    Pedido(
      id: 'p1',
      composto: 'ET-121/7138',
      volume: 30.000,
      date: DateTime.now(),
    ),
    Pedido(
      id: 'p2',
      composto: 'ET-129/7617',
      volume: 20.000,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff001C4D),
        title: Text('Embramaco'),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Color(0xffefff50),
              child: Text('CHART!'),
              elevation: 5,
            ),
          ),
          NovoPedido(),
          Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: pedidos.map((tx) {
                return Card(
                  elevation: 6,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff001C4D),
                            width: 2,
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '${tx.composto}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xff0C356D),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '${tx.volume}' + ' ton',
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
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff001C4D),
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
