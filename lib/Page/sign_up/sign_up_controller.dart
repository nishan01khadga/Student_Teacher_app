import 'dart:html';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_tecaher_connection_app/Page/sign_up/notifier/register_notifier.dart';
import 'package:student_tecaher_connection_app/common/global_loader/gobal_loader.dart';
import 'package:student_tecaher_connection_app/common/widget/popup_messages.dart';

class SignUpController{
  late WidgetRef ref;

  SignUpController({required this.ref});
  final navigatorKeyProvider = Provider<GlobalKey<NavigatorState>>((ref) => GlobalKey<NavigatorState>());



  Future<void> handleSignUp() async {
    var state = ref.read(registerNotifierProvider);

    String name = state.userName;
    String email= state.email;

    String password = state.password;
    String rePassword =state.rePassword;

   if(state.userName.isEmpty|| name.isEmpty){
     toastInfo("Your name is empty");
     return;
   }
   if (state.userName.length<6||name.length<6){
     toastInfo("Your name is too short");
     return;
   }
   if(state.email.isEmpty||email.isEmpty){
     toastInfo("your email is empty");
     return;
   }
    if((state.password.isEmpty||state.rePassword.isEmpty)||password.isEmpty||rePassword.isEmpty){
      toastInfo("Your password is empty");
      return;
    }

    if((state.password!=state.rePassword)||password!=rePassword){
      toastInfo("Your password did not match");
      return;
    }

    
    //show the loading icon
    ref.read(appLoaderProvider.notifier).setLoaderValue(true);
    Future.delayed(const Duration(seconds: 2),() async {
      BuildContext context = ref.read(navigatorKeyProvider).currentContext!;

      try{
        final credential=
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email, password: password);
        if (kDebugMode) {
          print(credential);
        }
        if(credential.user!=null){
          await credential.user?.sendEmailVerification();
          await credential.user?.updateDisplayName(name);
          // get server photo url
          // set user photo url
          toastInfo("Asn email has been to verify your account.please open that email and confirm your identity");
          Navigator.of(context).pop();
        }
      }catch(e){
        if(kDebugMode){
          print(e.toString());
        }
      }
      // show the register page
      ref.watch(appLoaderProvider.notifier).setLoaderValue(false);

    });
  }
}