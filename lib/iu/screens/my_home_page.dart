import 'package:flutter/material.dart';
import 'package:mvc_contado_flutter/controllers/counter_controller.dart';
import 'package:mvc_contado_flutter/iu/providers/counte_provider.dart';
import 'package:mvc_contado_flutter/iu/screens/delete_previous_state_page.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, this.title = 'no title'});

  final String title;

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    final counter = counterProvider.counter;

    return Scaffold(
      appBar: AppBar(
        title: Text('title count previo: $counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(
                      title: 'title count previo: $counter',
                    ),
                  )),
              child: const Text(
                'Clone Home Page (Push)',
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeletePreviousStatePage(),
                  )),
              child: const Text(
                'Remplece page to Delete Previous Page',
              ),
            ),
            Text(
              counter,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterProvider.incrementCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
