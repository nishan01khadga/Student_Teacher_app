import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_tecaher_connection_app/common/widget/text_widget.dart';

import '../utils/app_colors.dart';

AppBar buildAppbar({String title=""}){
  return AppBar(

    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(0.3),
      child: Container(
        color:  Colors.grey,
        height:1,
      ),
    ),
    title: text16Normal(text: title, color:  AppColors.primaryText),

  );
}