import 'package:flutter/material.dart';

class Product extends ChangeNotifier {
  final String id;
  final String title;
  final String price;
  final String description;
  final Image image;
  final String category;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
    this.isFavorite = false,
  });

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
