import 'package:flutter/material.dart';
import 'package:provider_example/model/catalog.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, values, child) {
      return Scaffold(
          appBar: AppBar(
            title: Text("This is the Cart Screen"),
            backgroundColor: Colors.orange,
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                onPressed: () {
                  values.clearCart();
                },
                child: Text("Clear Cart"),
              )
            ],
          ),
          body: values.cartItems.isEmpty
              ? Center(
                  child: Text("Cart List is Empty"),
                )
              : ListView.builder(
                  itemCount: values.cartItems.length,
                  itemBuilder: (context, index) {
                    var key = values.cartItems.keys.toList();
                    return ListTile(
                      title: Text(key[index]),
                      trailing: Text(values.cartItems[key[index]].toString()),
                    );
                  }));
    });
  }
}
