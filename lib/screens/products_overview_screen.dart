import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import '../widgets/products_grid.dart';

class ProductOverViewScreen extends StatefulWidget {
  // const ProductOverViewScreen({super.key});
  static const routeName = '/products';

  @override
  State<ProductOverViewScreen> createState() => _ProductOverViewScreenState();
}

class _ProductOverViewScreenState extends State<ProductOverViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
      padding: const EdgeInsets.all(5),
       child: Column(
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
                        // backgroundImage: AssetImage(
                        //   'assets/images/6753876521606062173.svg',
                        // ),
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
          //  SizedBox(
          //   height: 304,
          //   child:  SizedBox(
          //       height: 304,
          //       child: ListView.builder(
          //           shrinkWrap: true,
          //           itemCount: 10,
          //           scrollDirection: Axis.horizontal,
          //           itemBuilder: (context, index) {
          //             return Container(
          //               padding: const EdgeInsets.all(12),
          //               margin: const EdgeInsets.only(
          //                 right: 20,
          //               ),
          //               height: 304,
          //               width: 255,
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(16),
          //                   color: Color(0xffffffff),
          //                   boxShadow: [
          //                     BoxShadow(
          //                         color: Color(0xffc1d4f9).withOpacity(0.051),
          //                         offset: const Offset(0.0, 3.0),
          //                         blurRadius: 24.0,
          //                         spreadRadius: 0.0)
          //                   ]),
          //               child: Column(
          //                 children: [
          //                   Container(
          //                     height: 154,
          //                     decoration: BoxDecoration(
          //                       borderRadius:
          //                           BorderRadius.circular(16),
          //                       image: const DecorationImage(
          //                           fit: BoxFit.cover,
          //                           image: NetworkImage(
          //                             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcMTCafsxtgF8PznE0Mskf4UrXV30qkTeq0A&usqp=CAU',
          //                           )),
          //                     ),
          //                   ),
          //                   const SizedBox(
          //                     height: 18,
          //                   ),
          //                   const Flexible(
          //                       child: Text(
          //                     'Maldives is the best place for honeymoon to make the legs shake',
          //                     // style: kPoppinsBold.copyWith(
          //                     //   fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
          //                     // ),
          //                     maxLines: 2,
          //                     overflow: TextOverflow.ellipsis,
          //                   )),
          //                   const SizedBox(
          //                     height: 16,
          //                   ),
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       const CircleAvatar(
          //                         radius: 19,
          //                         backgroundColor: Color(0xff83b1ff),
          //                         backgroundImage: NetworkImage(
          //                             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwN_6IjUb64HhL7uDePR4toNdILUnf_whrDQ&usqp=CAU'),
          //                       ),
          //                       const SizedBox(
          //                         width: 12,
          //                       ),
          //                       Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         mainAxisAlignment: MainAxisAlignment.center,
          //                         children: const [
          //                           Text(
          //                             'Prince Angellos',
          //                             // style: kPoppinsSemiBold.copyWith(
          //                             //   fontSize:
          //                             //       SizeConfig.blockSizeHorizontal! * 3,
          //                             // ),
          //                           ),
          //                           Text(
          //                             'Dec 12, 2023',
          //                             // style: kPoppinsSemiBold.copyWith(
          //                             //   color: kGrey,
          //                             //   fontSize:
          //                             //       SizeConfig.blockSizeHorizontal! * 3,
          //                             // ),
          //                           )
          //                         ],
          //                       ),
          //                       Container(
          //                         height: 38,
          //                         width: 38,
          //                         padding: const EdgeInsets.all(10),
          //                         decoration: BoxDecoration(
          //                           borderRadius:
          //                               BorderRadius.circular(16),
          //                           color: Color(0xffffffff),
          //                         ),
          //                         // child: SvgPicture.asset('assets/share.svg'),
          //                       )
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             );
          //           }),
          //     ),
          // ),
          ProductsGrid()
          // Text('Oh What happened')
        ],
        
       ),
     ),
    );
  }
}