import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/Screens/NavScreens/bottomnavscreen.dart';
import 'package:untitled/Widgets/uiHelper.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Extract device width and height for responsiveness
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            // Added padding for consistent spacing from screen edges
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center, // Align content to the center
              children: [
                Container(
                  width: deviceWidth * 0.8, // Adjust width dynamically
                  child: Center(
                    child: Text(
                      "Instagram",
                      style: TextStyle(
                        fontSize: deviceWidth * 0.1, // Dynamic font size based on width
                        fontWeight: FontWeight.bold, // Made text bold for a professional look
                      ),
                    ),
                  ),
                ),
                SizedBox(height: deviceHeight * 0.03), // Spacer for dynamic vertical spacing
                UiHelper.CustomTextField(
                  controller: emailController,
                  text: "Email",
                  tohide: false,
                ),
                SizedBox(height: deviceHeight * 0.02),
                UiHelper.CustomTextField(
                  controller: passwordController,
                  text: "Password",
                  tohide: true,
                ),
                Align(
                  alignment: Alignment.centerRight, // Align button to the right
                  child: Padding(
                    padding: EdgeInsets.only(right: deviceWidth * 0.02),
                    child: UiHelper.CustomTextButton(
                      callback: () {},
                      text: "Forgot Password?",
                    ),
                  ),
                ),
                SizedBox(height: deviceHeight * 0.02),
                UiHelper.CustomButton(
                  callback: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavScreen()));
                  },
                  buttonName: "Log In",
                ),
                SizedBox(height: deviceHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: deviceWidth * 0.08, // Dynamic size for icon
                      width: deviceWidth * 0.08,
                      child: UiHelper.CustomImage(imgurl: "fb_icon_square.png"),
                    ),
                    SizedBox(width: deviceWidth * 0.015),
                    UiHelper.CustomTextButton(
                      callback: () {},
                      text: "Login with facebook",
                    ),
                  ],
                ),
                SizedBox(height: deviceHeight * 0.02),
                Text(
                  "OR",
                  style: TextStyle(
                    fontSize: deviceWidth * 0.04, // Dynamic font size
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: deviceHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        "Don't have an Account?",
                        style: TextStyle(
                          fontSize: deviceWidth * 0.035, // Dynamic font size
                        ),
                      ),
                    ),
                    SizedBox(width: deviceWidth * 0.02), // Dynamic spacing
                    Flexible(
                      child: UiHelper.CustomTextButton(
                        callback: () {},
                        text: "SignUp",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
