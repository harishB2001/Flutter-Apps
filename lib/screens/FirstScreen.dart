import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          children: [
            Expanded(child: Container()),
            Expanded(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/CatalogScreen');
              },
              child: Text("Catalog"),
            )),
            Expanded(child: Container()),
            Expanded(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/CartScreen');
              },
              child: Text("Cart"),
            )),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
