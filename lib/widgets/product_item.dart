import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import '../providers/product.dart';

class ProductItem extends StatelessWidget {
  // const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return Container(
      margin: const EdgeInsets.only(right: 20),
      height: 165,
      width: 276,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        // boxShadow:
      ),
      child: Column(
        children: [
          Container(
            height: 95,
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
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(
                      // 'GHC 50',
                      product.price as String,
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
                  product.isAvailable as String,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
