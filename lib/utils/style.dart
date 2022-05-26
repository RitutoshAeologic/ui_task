import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';


class AppStyles {

  static TextStyle whiteSemiBoldFont = const TextStyle(
      fontFamily: "Segoe UI",
      color: AppColors.white,
      fontWeight: FontWeight.w700,
      fontSize: 28,
    height: 1.5,
    //letterSpacing: 1.5,
  );
  static TextStyle whiteBoldFont = const TextStyle(
    fontFamily: "Segoe UI",
    color: AppColors.white,
    fontWeight: FontWeight.w400,
    fontSize: 37,
    //letterSpacing: 1.5,
  );
  static TextStyle regularSmallFont = const TextStyle(
    fontFamily: "Segoe UI",
    color: AppColors.white,
    fontWeight: FontWeight.w200,
    fontSize: 18,
    //height: 1.5,
    wordSpacing: 1.5,
  );
  static TextStyle regularBigFont = const TextStyle(
    fontFamily: "Segoe UI",
    color: AppColors.white,
    fontWeight: FontWeight.w300,
    fontSize: 18,
    height: 1.8,
    wordSpacing: 1.5,
  );

  static TextStyle richText = const TextStyle(
    fontFamily: "Segoe UI",
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    letterSpacing: 1.5,
  );

  static TextStyle spanText = const TextStyle(
    fontFamily: "Segoe UI",
    color: AppColors.white,
    fontWeight: FontWeight.normal,
    fontSize: 12.0,
   // letterSpacing: 1.5,
  );
}