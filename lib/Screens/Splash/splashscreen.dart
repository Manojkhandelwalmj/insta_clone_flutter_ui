import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:untitled/Screens/Login/loginscreen.dart';
import 'package:untitled/Widgets/uiHelper.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 250,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "insta144.png"),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Instagram",
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.width * 0.1),
            )),
          ],
        ),
      ),
    ));
  }
}
