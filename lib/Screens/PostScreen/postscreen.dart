import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/HomeScreen/homescreen.dart';
import 'package:untitled/Screens/NavScreens/bottomnavscreen.dart';
class PostScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));}, icon: Icon(Icons.arrow_back_ios)),
            Expanded(child: Icon(Icons.flash_off)),
            Icon(Icons.settings)
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black,
              child: Center(child: Text("Your camera is disabled!",style: TextStyle(fontSize: 20),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Row(
              children: [
                Icon(Icons.image),
                Expanded(child: ClipOval(child: Icon(Icons.circle,size: 60,color: Colors.grey.shade800,),)),
                Icon(Icons.flip_camera_android)
              ],
            ),
          ),
        ],
      ),
    );
  }

}