import 'package:dating_app/Buttons/button.dart';
import 'package:dating_app/Fonts/Fonts.dart';
import 'package:dating_app/icons/icons.dart';
import 'package:dating_app/pages/Authentication_pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(375, 812), // base size (e.g. iPhone X)
      builder: (context, child) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dating app",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
