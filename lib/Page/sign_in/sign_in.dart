import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_tecaher_connection_app/Page/sign_in/widgets/sign_in_widget.dart';

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
          body: Center(
            child: Text("Sign in page by Ishan"),
          ),
        ),

      )
    );
  }
}
