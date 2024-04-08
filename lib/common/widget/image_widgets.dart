import 'package:flutter/cupertino.dart';

Widget appImage(
    {String imagePath = "assets/icons/man_icon.png",
      double width = 16,
      double height = 16
    }){
  return Image.asset(
    imagePath.isEmpty?"assets/icons/man_icon.png":imagePath,
    width: width,
    height: height,
  );
}