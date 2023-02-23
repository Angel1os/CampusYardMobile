import 'package:flutter/material.dart';
import 'auth_login_screen.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // startTime();
  }

  // startTime() async {
  //   var duration = Duration(seconds: 4);
  //   return new Timer(duration, route);
  // }

  // route() {
    // Navigator.pushReplacement(
        // context, MaterialPageRoute(builder: (context) => LoginScreen()));
  // }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xffF5591F),
                gradient: LinearGradient(
                    colors: [(new Color(0xffF5591F)), new Color(0xffF2861E)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
          Center(
            child: Container(
              child: Image.asset("assets/images/app_logo.png"),
            ),
          ),
          // const Text('Campus Yard',
          // style: TextStyle(
          //   fontSize: 24,
          //   height: 5,
          //   color: Colors.black, 
          // ),
          // )
        ],
      ),
    );
  }
}
