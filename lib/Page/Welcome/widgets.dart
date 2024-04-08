import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_tecaher_connection_app/common/widget/app_shadow.dart';

import '../../common/widget/text_widget.dart';
import '../sign_in/sign_in.dart';

Widget appOnboardingPage(
    PageController controller, {
      String imagePath = "assets/images/fb ishan 7.jpg",
      String title ="",
      String subTitle="",
      index = 0,
      required BuildContext context,

    }){
  return SingleChildScrollView(
    child: Column(
      children: [
        Image.asset(imagePath, fit:  BoxFit.fitWidth,height: 400,width: 350, ),
        Container(
            margin: const EdgeInsets.only(top: 15),
            child: text24Normal(text: title),
        ),
        Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: text16Normal(text: subTitle),
        ),
       _nextButton(index, controller ,context),
      ],
    ),
  );
}
Widget _nextButton(index, PageController controller,BuildContext context){
  return GestureDetector(
    onTap: () async {
      if(index<5){
        controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear);
      }else{
        Navigator.pushNamed(
            context,
            "/SignIn"
        );
      //   bool? value = await Navigator.push(context, MaterialPageRoute (
      //       builder: (BuildContext context) {
      //         return   Container(
      //             color:  Colors.white,
      //             child:  SafeArea(
      //               child: Scaffold(
      //                 appBar:  AppBar(),
      //                 backgroundColor: Colors.white,
      //                 body: Center(
      //                   child: Text("Sign in page by Ishan"),
      //                 ),
      //               ),
      //
      //             )
      //         );
      //
      //       }
      //   ));
      }
    },
    child: Container(
      margin: const EdgeInsets.only(top:100,left: 25,right: 25),
      width: 325,
      height: 50,
      decoration:  appBoxShadow(),
      child: Center(child: text16Normal(text: index<5? "next":"Get started", color: Colors.white),
      ),
    ),
  );
}