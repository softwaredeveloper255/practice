import 'dart:async';

import 'package:practice/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        color: Colors.grey,
        child: Center(
          child: Image.asset('assets/images/img_1.png'),),
      ),


    );
  }
}