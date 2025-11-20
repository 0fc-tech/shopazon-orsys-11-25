import 'package:flutter/material.dart';
import 'package:shopazon/data/product.dart';

class Cart extends ChangeNotifier {
  final List<Product> _items = [];

  void addItem(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void removeItem(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  int get itemCount => _items.length;

  List<Product> get items => _items;
}
