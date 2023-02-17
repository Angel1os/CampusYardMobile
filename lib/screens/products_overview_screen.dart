import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import '../widgets/products_grid.dart';

class ProductOverViewScreen extends StatefulWidget {
  const ProductOverViewScreen({super.key});

  @override
  State<ProductOverViewScreen> createState() => _ProductOverViewScreenState();
}

class _ProductOverViewScreenState extends State<ProductOverViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
      children:   [
        const Padding(
          padding: EdgeInsets.all(20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(   
              icon: const Icon(
                Icons.arrow_back,
                ) ,
              onPressed: (){

              },
            ),
            Row(
              children: [
                IconButton(   
                  icon: const Icon(
                    Icons.notification_add_rounded,
                    ) ,
                  onPressed: (){

                  },
                ),
                IconButton(   
                  icon: const Icon(
                    Icons.menu,
                    ) ,
                  onPressed: (){

                  },
                ),
                // Column(
                //   children: const [
                    const CircleAvatar(
                      radius: 18, //38 38
                      backgroundImage: AssetImage(
                        'assets/images/ellipse.svg',
                      ),
                    ),
                    // Text(
                    //   'Prince'
                    // )
                //   ],
                // )
              ]
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        // ListView.builder(
        //   itemBuilder: itemBuilder)
        ProductsGrid()
      ],
      
     ),
    );
  }
}