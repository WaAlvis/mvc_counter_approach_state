import 'package:flutter/material.dart';
import 'package:mvc_contado_flutter/iu/providers/counte_provider.dart';
import 'package:mvc_contado_flutter/iu/screens/my_home_page.dart';
import 'package:mvc_contado_flutter/my_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider (create: (_) => Something()),
        ChangeNotifierProvider(
          // lazy: false,
          create: (_) => CounterProvider(),
        ),
      ],
      child: const MyApp(),
    );
  }
}
