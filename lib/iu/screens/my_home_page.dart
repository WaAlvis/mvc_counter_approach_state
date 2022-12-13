
import 'package:flutter/material.dart';
import 'package:mvc_contado_flutter/controllers/counter_controller.dart';
import 'package:mvc_contado_flutter/iu/screens/delete_previous_state_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage(
      {super.key, required this.counterController, this.title = 'no title'});

  final String title;
  final CounterController counterController;

  @override
  Widget build(BuildContext context) {
    final String counter = counterController.counter;
    return Scaffold(
      appBar: AppBar(
        title: Text('title count previo: $counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () =>
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MyHomePage(
                              title: 'title count previo: $counter',
                              counterController: counterController,
                            ),
                      )),
              child: const Text(
                'Clone Home Page (Push)',
              ),
            ),
            GestureDetector(
              onTap: () =>
                  Navigator.pushReplacement(
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
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.incrementCounter();

          Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) =>  MyHomePage(
                  counterController: counterController,)));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
