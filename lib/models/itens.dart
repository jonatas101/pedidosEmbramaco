import 'package:flutter/foundation.dart';

class Item {
  final String id;
  final String composto;
  final double volume;
  final DateTime date;

  Item({
    @required this.id,
    @required this.composto,
    @required this.volume,
    @required this.date,
  });
}
