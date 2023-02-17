
import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String rating;
  final double price;
  bool isAvailable;
  final String createdBy;
  final DateTime? createdAt;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.price,
    required this.isAvailable,
    required this.createdBy,
     this.createdAt
  });
}
