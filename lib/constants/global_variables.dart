import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mycolor {
  static const textColor = Color(0xFFccc7c5);
  static const mainColor = Color(0xff89dad0);
  static const Color iconColor1 = Color(0xffffd28d);
  static const iconColor2 = Color(0xfffcab88);
  static const paraColor = Color(0xff8f837f);
  static const buttonBackgroundColor = Color(0xfff7f6f4);
  static const signColor = Color(0xffa9a29f);
  static const titleColor = Color(0xff5c524f);
  static const mainBlackColor = Color(0xff332d2b);
  static const yellowColor = Color(0xffffd379);
}

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;
  static double mainContainer = screenHeight / 2.64;
}
