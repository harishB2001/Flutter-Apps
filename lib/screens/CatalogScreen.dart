import 'package:flutter/material.dart';
import 'package:provider_example/model/catalog.dart';
import 'package:provider/provider.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("This is the Catalog Screen"),
        ),
        body: ListView.builder(
            itemCount: Catalog.catlogItems.length,
            itemBuilder: (context, index) {
              return Consumer<Cart>(
                builder: (context, value, child) {
                  return ListTile(
                    title: Text(Catalog.catlogItems[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            var value = context.read<Cart>();
                            value.remove(Catalog.catlogItems[index]);
                            
                          },
                        ),
                        value.cartItems.containsKey(Catalog.catlogItems[index])
                            ? Text(value.cartItems[Catalog.catlogItems[index]]
                                .toString())
                            : Text("0"),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            var value = context.read<Cart>();
                            value.add(Catalog.catlogItems[index]);
                            
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            }));
  }
}
