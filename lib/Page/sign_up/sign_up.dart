import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_tecaher_connection_app/Page/sign_up/notifier/register_notifier.dart';
import 'package:student_tecaher_connection_app/Page/sign_up/sign_up_controller.dart';
import 'package:student_tecaher_connection_app/common/utils/app_colors.dart';

import '../../common/global_loader/gobal_loader.dart';
import '../../common/widget/app_bar.dart';
import '../../common/widget/app_textfields.dart';
import '../../common/widget/button_widget.dart';
import '../../common/widget/text_widget.dart';
import '../sign_in/widgets/sign_in_widget.dart';
import 'package:student_tecaher_connection_app/Page/sign_up/notifier/register_notifier.dart';


class SignUp extends ConsumerStatefulWidget {
  const SignUp({super.key});

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}
class _SignUpState extends ConsumerState<SignUp> {
  late SignUpController _controller;


  @override
  void initState(){
    _controller = SignUpController(ref: ref);
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final regProvider = ref.watch(registerNotifierProvider);
    //regProvider
    final loader = ref.watch(appLoaderProvider);
    print(loader);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: buildAppbar(title: "Sign Up"),
            backgroundColor: Colors.white,
            body: loader==false
                ?SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  // more sign up options message
                  Center(child: text14Normal(
                      text: "Enter your details below & free sign up by Ishan")),

                  const SizedBox(height: 50,),

                  //user name textField
                  appTextField(
                    text: "User name",
                    iconName: "assets/icons/man_icon.png",
                    hintText: "Enter your user name ",
                    func: (value) =>
                        ref
                            .read(registerNotifierProvider.notifier)
                            .onUserNameChange(value),
                  ),
                  const SizedBox(height: 20,),

                  //email textField
                  appTextField(
                    text: "Email",
                    iconName: "assets/icons/man_icon.png",
                    hintText: "Enter your email address ",
                    func: (value) =>
                        ref
                            .read(registerNotifierProvider.notifier)
                            .onUserEmailChange(value),
                  ),
                  const SizedBox(height: 20,),
                  //password textField
                  appTextField(
                      text: "Password",
                      iconName: "assets/icons/password4.png",
                      hintText: "Enter your password",
                      func: (value) =>
                          ref
                              .read(registerNotifierProvider.notifier)
                              .onUserPasswordChange(value),
                      obscureText: true
                  ),
                  const SizedBox(height: 20,),
                  //confirm password textField
                  appTextField(
                      text: "Confirm Password",
                      iconName: "assets/icons/password4.png",
                      hintText: "Enter your Confirm password",
                      func: (value) =>
                          ref
                              .read(registerNotifierProvider.notifier)
                              .onUserRePasswordChange(value),
                      obscureText: true
                  ),
                  const SizedBox(height: 20,),
                  //forgot text
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: text14Normal(
                        text: "By creating an account you have to agree with our them & condication"),
                  ),

                  const SizedBox(height: 100,),
                  // app login button
                  Center(
                      child: appButton(
                        buttonName: "Register",
                        isLogin: true,
                        context: context,

                      )
                  ),
                  // app register button

                ],
              ),
            )
                :const Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.blue,
                      color: AppColors.primaryElement,

            ),)
        ),
      ),
    );
  }

}