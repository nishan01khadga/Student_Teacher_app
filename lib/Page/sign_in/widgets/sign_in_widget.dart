import 'package:flutter/material.dart';
import 'package:student_tecaher_connection_app/common/utils/app_colors.dart';
import 'package:student_tecaher_connection_app/common/widget/app_shadow.dart';
import 'package:student_tecaher_connection_app/common/widget/image_widgets.dart';
import 'package:student_tecaher_connection_app/common/widget/text_widget.dart';
/*
preferredsize widget given you a height or space from the appbar
downloads and we can put child in the given space
 */

Widget thirdPartyLogin(){
  return Container(
    margin: EdgeInsets.only(left: 80.0,right: 80,top: 40,bottom: 20),
    child:  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton("assets/icons/google_icon.png"),
        _loginButton("assets/icons/apple_icon.png"),
        _loginButton("assets/icons/facebook_main_1.png"),

      ],
    ),
  );
}

Widget _loginButton(String imagePath){
  return GestureDetector(
    onTap: (){

    },
    child:  SizedBox(
      width: 40,
      height: 40,
      child: Image.asset(
          imagePath
      ),
    ),

  );
}
