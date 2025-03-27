import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    // required TextInputType textinputtype
  }) {
    return Container(
      height: 44,
      width: 343,
      decoration: BoxDecoration(
          color: Color(0XFF121212),
          border: Border.all(color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(padding: const EdgeInsets.only(left:15),
       child: TextField(
          controller: controller,
          // keyboardType: textinputtype,
          obscureText: tohide,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Color(0XFFFFFFFF)),
            border: InputBorder.none,
          ),
        ),
      )
    );
  }

  static CustomTextField2({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    required TextInputType textinputtype
  }) {
    return Container(
        height: 44,
        width: 343,
        decoration: BoxDecoration(
            color: Color(0XFF121212),
            border: Border.all(color: Colors.grey.shade700),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(padding: const EdgeInsets.only(left:15),
          child: TextField(
            controller: controller,
            keyboardType: textinputtype,
            obscureText: tohide,
            decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color(0XFFFFFFFF)),
              border: InputBorder.none,
            ),
          ),
        )
    );
  }

  static CustomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl",fit: BoxFit.cover);
  }
  static CustomImageDp({required String imgurl}) {
    return Image.asset("assets/images/$imgurl",fit: BoxFit.cover,scale: 7,);
  }

  static CustomTextButton(
      {required VoidCallback callback, required String text}) {
    return TextButton(
        onPressed: () {
          callback();
        },
        child: Text(
          text,
          style: TextStyle(color: Color(0XFF3797EF),fontSize: 14),
        ));
  }

  static CustomButton(
      {required VoidCallback callback, required String buttonName}) {
    return SizedBox(
        height: 44,
        width: 343,
        child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0XFF3797EF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: Center(
            child: Text(
              buttonName,
              style: TextStyle(
                fontSize: 14,
                color: Color(0XFFFFFFFF),
              ),
            ),
          ),
        ));
  }
  // static CustomButtonHalf({required VoidCallback callback,required String ButtonName}){
  //   return SizedBox(he)
  // }
}
