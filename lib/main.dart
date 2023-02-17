import 'package:campus_yard/screens/products_overview_screen.dart';
import 'package:campus_yard/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/splash_screen.dart';

import './providers/auth.dart';
import './providers/product.dart';
import './providers/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth()
        ),
        ChangeNotifierProxyProvider<Auth,Products>(
          create: (ctx) => Products("","",[]),
          update: (context, auth, previousProducts) => Products(
            auth.token,
            auth.userId,
            previousProducts == null? [] : previousProducts.items
          )
        )
      ],
      child: Consumer<Auth>(builder: (context, auth, _) => const MaterialApp(
        title: 'Campus Yard',
        // theme: ThemeData(
        //   primarySwatch: 
        // ),
        debugShowCheckedModeBanner: false,
        // home: SplashScreen(),
        home: auth.isAuth
        ? ProductOverViewScreen()
        : FutureBuilder(
          future: auth.,
          builder: builder),
           routes: {
            
      },
      ),),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
