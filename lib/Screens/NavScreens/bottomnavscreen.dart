import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/ReelsScreen/reelsscreen.dart';
import 'package:untitled/Screens/HomeScreen/homescreen.dart';
import 'package:untitled/Screens/PostScreen/postscreen.dart';
import 'package:untitled/Screens/ProfileScreen/profilescreen.dart';
import 'package:untitled/Screens/SearchScreen/searchscreen.dart';
class BottomNavScreen extends StatefulWidget{
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex=0;
  List<Widget>pages=[
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    ReelsScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black38,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: "Post"),
            BottomNavigationBarItem(icon: Icon(Icons.video_library_rounded),label: "Reels"),
            BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded),label: "Profile"),
          ],),
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
    );
  }
}