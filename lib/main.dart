import 'package:flutter/material.dart';
import 'package:provider_example/screens/CartScreen.dart';
import 'package:provider_example/screens/CatalogScreen.dart';
import 'package:provider_example/screens/FirstScreen.dart';
import 'package:provider/provider.dart';
import 'model/catalog.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Cart(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/CatalogScreen': (context) => CatalogScreen(),
        '/CartScreen': (context) => CartScreen(),
      },
    );
  }
}
