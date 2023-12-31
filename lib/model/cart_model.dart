import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Avocado", "4.00", "avocado.png", Colors.green],
    ["Banana", "2.50", "banana.png", Colors.yellow],
    ["Chicken", "12.80", "chicken.png", Colors.brown],
    ["Water", "1.00", "water.png", Colors.blue],

  ];
  static int counter = 0;
  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    counter++;
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    counter--;
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {

      totalPrice += double.parse(cartItems[i][1]);
    }
    if(counter>= 8)
    return (totalPrice*0.9).toStringAsFixed(2);
    return totalPrice.toStringAsFixed(2);

  }
}
