import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/Screens/HomeScreen/HomeMessagesScreen/homemessageScreen.dart';
import 'package:untitled/Widgets/uiHelper.dart';
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Text("Instagram"),
              Spacer(),
              Icon(CupertinoIcons.heart),
              SizedBox(width: 5,),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeMessageScreen()));
              }, icon: Icon(CupertinoIcons.bolt_horizontal_circle)),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black38,
                              border: Border.all(width: 2,color: Colors.grey.shade800),
                            ),
                            child: ClipOval(child: UiHelper.CustomImage(imgurl: "useravtar.jpg"),),
                          ),
                          Text("Your Story")
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black38,
                              border: Border.all(color: Colors.grey.shade800,width: 2),
                            ),
                            child: ClipOval(child: UiHelper.CustomImage(imgurl: "insta96.png"),),
                          ),
                          Text("Instagram")
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black38,
                              border: Border.all(color: Colors.grey.shade800,width: 2),
                            ),
                            child: ClipOval(child: UiHelper.CustomImage(imgurl: "lineimg.jpg"),),
                          ),
                          Text("Image")
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black38,
                              border: Border.all(color: Colors.grey.shade800,width: 2),
                            ),
                            child: ClipOval(child: UiHelper.CustomImage(imgurl: "fb_icon_square.png"),),
                          ),
                          Text("Facebook")
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black38,
                              border: Border.all(color: Colors.grey.shade800,width: 2),
                            ),
                            child: ClipOval(child: UiHelper.CustomImage(imgurl: "instaimg.jpg"),),
                          ),
                          Text("Text")
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black38,
                              border: Border.all(color: Colors.grey.shade800,width: 2),
                            ),
                            child: ClipOval(child: UiHelper.CustomImage(imgurl: "apploginbackground.jpg"),),
                          ),
                          Text("Image")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.account_circle),
                    SizedBox(width: 10,),
                    Text("Manoj_Khandelwal"),
                    Spacer(),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
                    color: Colors.black38,
                    child: UiHelper.CustomImage(imgurl: "apploginbackground.jpg"),
                  ),
                      SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(CupertinoIcons.heart),
                      SizedBox(width: 15,),
                      Icon(Icons.comment_rounded),
                      SizedBox(width: 15,),
                      Icon(Icons.send_rounded),
                      Spacer(),
                      Icon(Icons.archive_outlined)
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(height: 50,),
                    Icon(Icons.account_circle),
                    SizedBox(width: 10,),
                    Text("Manoj_Fan_Page",),
                    Spacer(),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
                    color: Colors.black38,
                    child: UiHelper.CustomImage(imgurl: "lineimg.jpg"),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(CupertinoIcons.heart),
                      SizedBox(width: 15,),
                      Icon(Icons.comment_rounded),
                      SizedBox(width: 15,),
                      Icon(Icons.send_rounded),
                      Spacer(),
                      Icon(Icons.archive_outlined)
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}