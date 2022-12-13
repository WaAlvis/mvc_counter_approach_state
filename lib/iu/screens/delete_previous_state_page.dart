import 'package:flutter/material.dart';
import 'package:mvc_contado_flutter/controllers/counter_controller.dart';
import 'package:mvc_contado_flutter/iu/providers/counte_provider.dart';
import 'package:mvc_contado_flutter/iu/screens/my_home_page.dart';
import 'package:provider/provider.dart';

class DeletePreviousStatePage extends StatelessWidget {
  const DeletePreviousStatePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    final _counter = counterProvider.counter;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Previous State'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterProvider.incrementCounter(),
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
                              )));
                },
                child: const Text('Volver')),
          ],
        ),
      ),
    );
  }
}
