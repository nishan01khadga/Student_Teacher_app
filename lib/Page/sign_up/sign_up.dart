import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/widget/app_bar.dart';
import '../../common/widget/app_textfield.dart';
import '../../common/widget/button_widget.dart';
import '../../common/widget/text_widget.dart';
import '../sign_in/widgets/sign_in_widget.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Colors.white,
      child:  SafeArea(
        child: Scaffold(
            appBar:buildAppbar(),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  // more sign up options message
                  Center(child: text14Normal(text:"Enter your details below & free sign up by Ishan")),

                  const SizedBox(height: 50,),

                  //user name textField
                  appTextField(
                      text: "User name",
                      iconName: "assets/icons/man_icon.png",
                      hintText: "Enter your user name "
                  ),
                  const SizedBox(height: 20,),

                  //email textField
                  appTextField(
                      text: "Email",
                      iconName: "assets/icons/man_icon.png",
                      hintText: "Enter your email address "
                  ),
                  const SizedBox(height: 20,),
                  //password textField
                  appTextField(
                      text: "Password",
                      iconName: "assets/icons/password4.png",
                      hintText: "Enter your password",
                      obscureText: true
                  ),
                  const SizedBox(height: 20,),
                  //confirm password textField
                  appTextField(
                      text: "Confirm Password",
                      iconName: "assets/icons/password4.png",
                      hintText: "Enter your Confirm password",
                      obscureText: true
                  ),
                  const SizedBox(height: 20,),
                  //forgot text
                  Container(
                    margin: const EdgeInsets.only(left:25),
                    child: text14Normal(
                        text:"By creating an account you have to agree with our them & condication"),
                  ),

                  const SizedBox(height: 20,),
                  // app login button
                  Center(
                      child: appButton(
                        buttonName: "Sign Up",
                        isLogin: true,
                        context: context,
                      )
                  ),
                  // app register button

                ],
              ),
            )
        ),
      ),
    );
  }
}