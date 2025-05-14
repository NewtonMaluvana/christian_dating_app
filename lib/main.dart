import 'package:dating_app/pages/Authentication_pages/login_page.dart';
import 'package:dating_app/pages/Authentication_pages/sign_up.dart';
import 'package:flutter/material.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dating app",
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}
