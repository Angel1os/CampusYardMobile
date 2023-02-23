import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../providers/product.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  // const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return Container(
      margin: const EdgeInsets.only(right: 20),
      height: 205.0,
      width: 276.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffffffff),
        boxShadow: [
          BoxShadow(
          color: const Color(0xff19202d).withOpacity(0.051),
          offset: const Offset(0.0, 4.0),
          blurRadius: 24.0,
          spreadRadius: 0.0
        )
      ]),
      child: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                ProductDetailScreen.routeName,
                arguments: product.id,
              );
              },
              child: Container(
                // height: 95,
                // height: 185,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcMTCafsxtgF8PznE0Mskf4UrXV30qkTeq0A&usqp=CAU',
                          product.imageUrl
                        )
                    )
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        // 'GHC 50',
                        product.price.toString(),
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.star_border_outlined),
                        onPressed: () {},
                      )
                    ],
                  ),
                   Text(
                    // 'Geisha',
                    product.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   Text(
                    // 'Available In Stock',
                    product.isAvailable.toString(),
                    style: const TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
