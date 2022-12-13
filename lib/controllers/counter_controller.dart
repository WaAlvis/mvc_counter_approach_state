// https://codingornot.com/mvc-modelo-vista-controlador-que-es-y-para-que-sirve

// Controllador: este componente se encarga de gestionar las instrucciones
// que se reciben, atenderlas y procesarlas.
// Por medio de él se comunican el modelo y la vista:  solicitando los datos
// necesarios; manipulándolos para obtener los resultados; y entregándolos
// a la vista para que pueda mostrarlos.

import 'package:mvc_contado_flutter/models/model_counter.dart';

class CounterController {
  final ModelCounter _modelCounter = ModelCounter();

  ModelCounter get modelCounter => _modelCounter;

  String get counter => _modelCounter.toString();

  void incrementCounter() {
    print('add + 1');
    _modelCounter.setCounter(_modelCounter.counter + 1);
  }
}
