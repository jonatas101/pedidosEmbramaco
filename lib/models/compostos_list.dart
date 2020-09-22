import 'package:pedidosEmbramaco/models/compostos.dart';

import 'compostos.dart';

class CompostosList {
  final String codigo;
  bool checked;

  CompostosList({
    this.compostos,
    this.codigo,
    this.checked = false,
  });

  List<Composto> compostos = [
    Composto(codigo: 'CE-5229'),
    Composto(codigo: 'CIK-AM1459'),
    Composto(codigo: 'CIK-AZ1111'),
    Composto(codigo: 'CIK-MA5455'),
    Composto(codigo: 'CIK-NE6118'),
    Composto(codigo: 'CIK-PL0101'),
    Composto(codigo: 'CIK-PL0115'),
    Composto(codigo: 'ET-121/7138'),
    Composto(codigo: 'ET-129/7315'),
    Composto(codigo: 'ET-129/7620'),
    Composto(codigo: 'ET129/7381'),
    Composto(codigo: 'ET-129/7617'),
    Composto(codigo: 'M-535/1051'),
    Composto(codigo: 'M-622/138'),
    Composto(codigo: 'M-85/542'),
  ];
}
