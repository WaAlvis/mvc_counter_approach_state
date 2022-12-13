import 'package:flutter/material.dart';
import 'package:mvc_contado_flutter/controllers/counter_controller.dart';
import 'package:mvc_contado_flutter/iu/screens/my_home_page.dart';

class DeletePreviousStatePage extends StatefulWidget {
  const DeletePreviousStatePage({
    Key? key,
  }) : super(key: key);

  @override
  State<DeletePreviousStatePage> createState() =>
      _DeletePreviousStatePageState();
}

class _DeletePreviousStatePageState extends State<DeletePreviousStatePage> {
  final _counterController = CounterController.instance;
  late String _counter;

  @override
  void initState() {
    _counter = _counterController.counter;
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counterController.incrementCounter();
      _counter = _counterController.counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Previous State'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_counter),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                                title: 'Volvimos desde el delete state',
                                counterController: CounterController.instance,
                              )));
                },
                child: const Text('Volver')),
          ],
        ),
      ),
    );
  }
}
