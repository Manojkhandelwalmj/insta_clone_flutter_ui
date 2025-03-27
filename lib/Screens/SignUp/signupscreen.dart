import 'package:flutter/material.dart';
import 'package:untitled/Screens/Login/loginscreen.dart';

import 'package:untitled/Widgets/uiHelper.dart';

class SignUpScreen extends StatelessWidget{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "instaimg.jpg"),
            SizedBox(height: 30,),
            UiHelper.CustomTextField2(controller: emailController, text: "Enter a New Email", tohide: false,textinputtype: TextInputType.emailAddress),
            SizedBox(height: 10,),
            UiHelper.CustomTextField2(controller: passwordController, text: "Create a New Password", tohide: true,textinputtype: TextInputType.text),
            SizedBox(height: 10,),
            UiHelper.CustomTextField2(controller: usernameController, text: "Enter a Unique Username", tohide: false,textinputtype: TextInputType.text),
            SizedBox(height: 30,),
            UiHelper.CustomButton(callback: (){}, buttonName: "SignUp"),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an Account?",style: TextStyle(fontSize: 14,),),
                UiHelper.CustomTextButton(callback: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                }, text: "Log In"),
              ],
            )
          ],
        ),
      ),
    );
  }

}