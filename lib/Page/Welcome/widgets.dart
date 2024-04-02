import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_tecaher_connection_app/common/widget/app_shadow.dart';

import '../../common/widget/text_widget.dart';

Widget appOnboardingPage(
    PageController controller,
    {String imagePath = "assets/images/fb ishan 7.jpg",
      String title ="",
      String subTitle="",
      index = 0,
    }){
  return Column(
    children: [
      Image.asset(imagePath,fit:  BoxFit.fitWidth,),
      Container(
          margin: const EdgeInsets.only(top: 15),
          child: text24Normal(text: title),
      ),
      Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: text16Normal(text: subTitle),
      ),
     _nextButton(index, controller),
    ],
  );
}
Widget _nextButton(index, PageController controller){
  return GestureDetector(
    onTap: (){
      if(index<5){
        controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear);
      }
    },
    child: Container(
      margin: const EdgeInsets.only(top:100,left: 25,right: 25),
      width: 325,
      height: 50,
      decoration:  appBoxShadow(),
      child: Center(
          child: text16Normal(
              text: "next",
            color: Colors.white
          ),
      ),
    ),
  );
}