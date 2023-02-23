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
    print("items:$_items");
    return [
      Product(
          id: 'p1',
          title: 'Soap',
          description: 'A soap - it is pretty red!',
          price: 29.99,
          imageUrl:
              // 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
              'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Handmade_soap_cropped_and_simplified.jpg/250px-Handmade_soap_cropped_and_simplified.jpg',
          rating: '5.5',
          isAvailable: false,
          createdBy: 'Prince',
          createdAt: DateTime.now()),
      Product(
          id: 'p1',
          title: 'Sunshine',
          description: 'A red shirt - it is pretty red!',
          price: 29.99,
          imageUrl:
              // 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
              'https://media.gettyimages.com/id/1258304230/photo/close-up-hands-holding-natural-bar-of-soap-shampoo.jpg?s=612x612&w=0&k=20&c=J5A_HfPQ9k6MPAKd4EsZO7aObB8Np_aLxIMMglCItRE=',
          rating: '5.5',
          isAvailable: false,
          createdBy: 'Prince',
          createdAt: DateTime.now()),
      Product(
          id: 'p1',
          title: 'Kleesoft',
          description: 'A red shirt - it is pretty red!',
          price: 29.99,
          imageUrl:
              // 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
              'https://media.gettyimages.com/id/1127509293/photo/a-close-up-of-a-female-hand-holding-a-white-organic-soap.jpg?s=612x612&w=0&k=20&c=eACno-ag_ZbOPBv9Oerml7JC-LD2XWFfRAlvr8nqgGs=',
          rating: '5.5',
          isAvailable: false,
          createdBy: 'Prince',
          createdAt: DateTime.now()),
    ];
  }

  Product findById(Object? id) {
    return items.firstWhere((prod) => prod.id == id);
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
