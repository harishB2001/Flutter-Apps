import 'package:flutter/cupertino.dart';

class Catalog {
// The items in the below list are "catalogItems" are hardcoded
// You can add your own items
static List catlogItems = [
    'Paper Bundle',
    'Bread',
    'Milk',
    'Egg',
    'Pen',
'Pencil'
  ];
}

class Cart with ChangeNotifier {
  Map<String, int> cartItems = {};
  static int totalitems = 0;
// The Below function add the selected item and its quantity in cartItems...
  void add(String item) {
    cartItems.update(item, (value) => value + 1, ifAbsent: () {
      totalitems += 1;
      return cartItems[item] = 1;
    });
    notifyListeners();
  }

// The Below function remove the selected item or its quantity in cartItems...
  void remove(
    String item,
  ) {
    if (cartItems.containsKey(item) && cartItems[item] == 1) {
      cartItems[item] = 0;
      cartItems.remove(item);
      totalitems -= 1;
    } else if (cartItems.containsKey(item))
      cartItems.update(
        item,
        (value) => value - 1,
      );

    notifyListeners();
  }

//The Below Function clears the Cart
  void clearCart() {
    cartItems.clear();
    notifyListeners();
  }
}

