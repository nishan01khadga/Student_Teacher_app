import 'package:flutter/material.dart';
import 'package:student_tecaher_connection_app/Page/sign_in/widgets/sign_in_widget.dart';
import 'package:student_tecaher_connection_app/common/widget/text_widget.dart';

import '../../common/widget/app_bar.dart';
import '../../common/widget/app_textfield.dart';
import '../../common/widget/button_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
                // top login buttons
                thirdPartyLogin(),
                // more login options message
                Center(child: text14Normal(text:"Or use your email account to login by Ishan")),
            
                const SizedBox(height: 50,),
            
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
                //forgot text
                Container(
                  margin: const EdgeInsets.only(left:25),
                      child: textUnderline(text:"Forgot password?"),
                  ),
                const SizedBox(height: 100,),
                // app login button
                Center(
                    child: appButton(
                      buttonName: "Login",
                      context: context,
                    )
                ),
                const SizedBox(height: 20,),
                // app login button
                Center(
                    child: appButton(
                      buttonName: "Register",
                      isLogin: false,
                      context: context,
                        func:()=> Navigator.pushNamed(context, "/register"),
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
