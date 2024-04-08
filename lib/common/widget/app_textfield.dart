
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_tecaher_connection_app/common/widget/text_widget.dart';

import 'app_shadow.dart';
import 'image_widgets.dart';

Widget appTextField(
    {String text="",
      String iconName = "" ,
      String hintText="Type in your info",
      bool obscureText = false
    }){
  return Container(
    padding: EdgeInsets.only(left: 25,right: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        SizedBox(height: 5,),
        Container(
          width: 300,
          height: 50,
          // color: Colors.red,
          decoration: appBoxDecorationTextField(),
          // row contains icon and textfield
          child: Row(
            children: [
              //for showing icons
              Container(
                margin: EdgeInsets.only(left: 17),
                child: appImage(imagePath: iconName,height: 20,width: 20),
              ),
              Container(
                width: 250,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: hintText,
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          )
                      ),

                      //default border without any input
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          )
                      )
                  ),
                  onChanged: (value){

                  },
                  maxLines: 1,
                  autocorrect: false,
                  // by default it's false
                  obscureText: obscureText,

                ),
              )

            ],
          ),
        )
      ],
    ),

  );

}
