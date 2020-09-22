import 'package:flutter/foundation.dart';

class Pedido {
  final String id;
  final String composto;
  final double volume;
  final DateTime date;

  Pedido({
    @required this.id,
    @required this.composto,
    @required this.volume,
    @required this.date,
  });
}
