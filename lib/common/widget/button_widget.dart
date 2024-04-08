import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_tecaher_connection_app/Page/sign_in/widgets/sign_in_widget.dart';
import 'package:student_tecaher_connection_app/Page/sign_up/sign_up.dart';
import 'package:student_tecaher_connection_app/common/utils/app_colors.dart';
import 'package:student_tecaher_connection_app/common/widget/app_shadow.dart';
import 'package:student_tecaher_connection_app/common/widget/text_widget.dart';

import 'app_bar.dart';

Widget appButton({
  String buttonName="",
  double width=300,
  double height=50,
  bool isLogin = true,
  BuildContext? context,
}){
  return GestureDetector(
    onTap: (){
      Navigator.push(context!,
        MaterialPageRoute(
            builder:(BuildContext context) =>
            SignUp(),
        ),
          
      );

       },
     child: Container(
       width: width,
       height: height,
       // islogin is true then send primary color else white color
       decoration: appBoxShadow(
           color:isLogin?AppColors.primaryElement:Colors.white,border: Border.all(color: AppColors.primaryFourthElementText)),
       child: Center(child: text16Normal(text: buttonName ,
           color:isLogin?AppColors.primaryBackground:AppColors.primaryText)),
     ),
  );
}