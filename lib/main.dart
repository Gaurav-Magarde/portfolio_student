import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_student_assignment/screens/navigation_screen.dart';
import 'package:portfolio_student_assignment/screens/prtfolio_screen.dart';
import 'package:portfolio_student_assignment/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:(context,child) => MaterialApp(
        title: 'Yoliday Design Test',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: AppTextTheme.textTheme,
          useMaterial3: true,
          fontFamily: 'Roboto'
        ),
        home: const MainNavigationScreen(),
      ),
    );
  }
}
