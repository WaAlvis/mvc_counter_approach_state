import 'package:flutter/material.dart';
import 'package:mvc_contado_flutter/controllers/counter_controller.dart';
import 'package:mvc_contado_flutter/iu/screens/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final counterController = CounterController.instance;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page', counterController: counterController,),
    );
  }
}