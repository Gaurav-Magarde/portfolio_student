import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorTheme {
  static const Color primaryDark = Color(0xFFdf5532);
}

class AppTextTheme {
  const AppTextTheme._();
  static final TextTheme textTheme = TextTheme(

    titleLarge: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),

    titleMedium: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),

    titleSmall: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),

    bodyLarge: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: Colors.black87,
    ),

    bodyMedium: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    ),

    labelSmall: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    ),
  );
}
