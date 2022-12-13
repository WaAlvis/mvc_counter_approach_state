import 'package:flutter/material.dart';

import '../../controllers/counter_controller.dart';

class CounterProvider extends ChangeNotifier {

  final counterController = CounterController();
  // String counter = counterController.counter; // como obtengo el valor inicial desde el ModelCounter
  String  counter = '';


  // CounterProvider() {
  //   print('CounterProvider Inicializado');
  //   this.incrementCounter();
  // }

  incrementCounter() {
    counterController.incrementCounter();
    counter = counterController.counter;
    notifyListeners();
  }
}
