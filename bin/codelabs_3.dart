import 'dart:js_util';

import 'package:codelabs_3/codelabs_3.dart' as codelabs_3;
import 'singleWhere.dart';
import 'any_where.dart';
import 'where.dart';
import 'mapping.dart';
import 'mapping_task.dart';

void main(List<String> arguments) {
  const items = ['Malad', 'Popcora', 'Toast', 'Lasagne'];

  //Ejercicio: Practica escribir un predicado de prueba - Primer Desafio singleWhere()
  print(singleWhere(items, 'M', 'a'));
  print('');

  //Ejercicio: Verificar que un Iterable cumple una condición - Segundo Desafio every()	y any()
  returnUserEvaluation();
  print('');

  //Ejercicio: Filtrado de elementos de una lista - Tercer Desafio where()
  returnUserEvaluationWhere();
  print('');

  // Ejercicio: asignación a un tipo diferente - Cuarto Desafio map()
  returnUserMap();
  print('');

  // Ejercicio: poner todo junto - Quinto Desafio map()
  returnUserEvaluationAny();
  print('');
}
