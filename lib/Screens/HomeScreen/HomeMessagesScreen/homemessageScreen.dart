import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/HomeScreen/HomeMessagesScreen/generalmessagesscreen.dart';
import 'package:untitled/Screens/HomeScreen/HomeMessagesScreen/requestsmessagesscreen.dart';
import 'package:untitled/Widgets/uiHelper.dart';

import 'channelmessagesscreen.dart';
import 'primarymessagesscreen.dart';

class HomeMessageScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Manoj_kh25"),
            Spacer(),
            Icon(Icons.checklist),
            SizedBox(width: 10,),
            Icon(Icons.trending_up_rounded),
            SizedBox(width: 10,),
            Icon(Icons.group_add_outlined),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900,
                      ),
                      child: TextField(
                        controller: SearchController(),
                        decoration: InputDecoration(
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          // suffixIcon: Icon(Icons.ac_unit),
                        ),
                      ),
                    ),
                  ),SizedBox(width: 10,),
                  Text("Filter"),
                ],
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(height: 50,
            child: TabBar(unselectedLabelColor: Colors.grey,indicatorColor: Colors.white,labelColor: Colors.white,dividerHeight: 0,indicatorSize: TabBarIndicatorSize.tab,tabs: [
              Tab(child: Text("Primary",),),
              Tab(child: Text("General"),),
              Tab(child: Text("Channel"),),
              Tab(child: Text("Requests"),),
            ]),),
            Expanded(
              child: TabBarView(children: [
                PrimaryMessagesScreen(),
                GeneralMessagesScreen(),
                ChannelMessagesScreen(),
                RequestMessagesScreen(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
