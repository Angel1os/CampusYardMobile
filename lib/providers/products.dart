import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../http_exception.dart';
import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'A red shirt - it is pretty red!',
        price: 29.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
        rating: '5.5',
        isAvailable: false,
        createdBy: 'Prince',
        createdAt: DateTime.now()),
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'A red shirt - it is pretty red!',
        price: 29.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
        rating: '5.5',
        isAvailable: false,
        createdBy: 'Prince',
        createdAt: DateTime.now()),
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'A red shirt - it is pretty red!',
        price: 29.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
        rating: '5.5',
        isAvailable: false,
        createdBy: 'Prince',
        createdAt: DateTime.now()),
  ];

  List<Product> get items {
    return [..._items];
  }

  final String? authToken;
  final String? userId;
  Products(this.authToken, this.userId, this._items);

  // Future<void> fetchandSetProducts([bool filterByUser = false]) async {
  //   final filterString

  Future<void> fetchandSetProducts([bool filterByUser = false]) async {
    final filterString =
        filterByUser ? 'orderBy="creatorId"&equalTo="$userId"' : '';
    var url = Uri.parse(
        'https://campusyard-da54e-default-rtdb.firebaseio.com/products');
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      print(
          'RESPONSE FROM FIREBASE DATABAE ----------------- ' + response.body);
    } catch (error) {
      throw (error);
    }
  }
}
