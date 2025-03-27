import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/PostScreen/postscreen.dart';
import 'package:untitled/Screens/ProfileScreen/profilepostsscreen.dart';
import 'package:untitled/Screens/ProfileScreen/profilereelsscreen.dart';
import 'package:untitled/Screens/ProfileScreen/profiletagsscreen.dart';
import 'package:untitled/Widgets/uiHelper.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 2, right: 2),
              ),
              Text("Manoj_kh25"),
              Icon(Icons.keyboard_arrow_down_outlined),
              // Spacer(),
              Spacer(),
              Icon(Icons.alternate_email),
              SizedBox(
                width: 25,
              ),
              IconButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PostScreen()));
              }, icon: Icon(Icons.add_box_outlined))
            ],
          ),
        ),
        endDrawer: Drawer(
            width: double.infinity,
            backgroundColor: Colors.black,
            child: Scaffold(
              appBar: AppBar(
                title: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back)),
                    Text("Settings Screen"),
                  ],
                ),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      width: double.maxFinite,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(controller: SearchController(),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none
                      ),),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Account Setting",style: TextStyle(fontSize: 28),),
                  SizedBox(height: 10,),
                  Text("Password & Security",style: TextStyle(fontSize: 28),),
                  SizedBox(height: 10,),
                  Text("Archieved",style: TextStyle(fontSize: 28),),
                  SizedBox(height: 10,),
                  Text("Liked reels",style: TextStyle(fontSize: 28),),
                  SizedBox(height: 10,),
                  Text("Saved",style: TextStyle(fontSize: 28),),
                  SizedBox(height: 10,),
                  Text("Help",style: TextStyle(fontSize: 28),),
                  Spacer(),
                  Center(child: ElevatedButton(onPressed: (){}, child: Text("Log Out")))
                ],
              ),
            )
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 3, right: 3),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    UiHelper.CustomImageDp(imgurl: "useravtar.jpg"),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "7",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text("Posts")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "7M",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text("Followers")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "7",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "Following",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        // SizedBox(height: 10,),
                        Text("Android Developer"),
                        SizedBox(
                          height: 2,
                        ),
                        Text("Flutter Developer"),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Edit Profile"),
                    )),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Share Profile"))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade800,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: ClipOval(
                                child: UiHelper.CustomImageDp(
                                  imgurl: "lineimg.jpg",
                                ),
                              ),
                            ),
                          ),
                          Text("Normal Image")
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.black38,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.grey.shade800, width: 2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: ClipOval(
                                child: UiHelper.CustomImage(
                                    imgurl: "insta192.png"),
                              ),
                            ),
                          ),
                          Text("Instagram Logo Image"),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.grey.shade800, width: 2)),
                            child: ClipOval(
                              child: UiHelper.CustomImage(
                                  imgurl: "fb_icon_round.png"),
                            ),
                          ),
                          Text("Facebook logo Image"),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black38,
                              border: Border.all(
                                color: Colors.grey.shade800,
                                width: 2,
                              ),
                            ),
                            child: Icon(Icons.add),
                          ),
                          Text("New"),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on_rounded),
                    ),
                    Tab(
                      icon: Icon(Icons.video_library_rounded),
                    ),
                    Tab(
                      icon: Icon(Icons.person_pin_outlined),
                    )
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  ProfilePostsScreen(),
                  ProfileReelsScreen(),
                  ProfileTagsScreen(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
