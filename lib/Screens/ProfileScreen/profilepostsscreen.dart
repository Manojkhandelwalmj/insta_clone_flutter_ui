import 'package:flutter/material.dart';
class ProfilePostsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var arrGridPost = [
      {
        "img":"assets/images/3dvr.jpg"
      },
      {
        "img":"assets/images/apploginbackground.jpg"
      },
      {
        "img":"assets/images/lineimg.jpg"
      },
      {
        "img":"assets/images/3dview.jpg"
      },
      {
        "img":"assets/images/vrboy.jpg"
      },
      {
        "img":"assets/images/useravtar.jpg"
      },
      {
        "img":"assets/images/insta72.png"
      },
    ];
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(),
          child: Image.asset(arrGridPost[index]["img"].toString()),
        );
      },itemCount: arrGridPost.length,),
    );
  }
  
}