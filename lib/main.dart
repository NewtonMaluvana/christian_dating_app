import 'package:dating_app/pages/Setprofile/set_age.dart';
import 'package:dating_app/pages/Setprofile/set_username.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl_standalone.dart'
    if (dart.library.html) 'package:intl/intl_browser.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await findSystemLocale();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dating app",
      debugShowCheckedModeBanner: false,
      home: SetAgePage(),
    );
  }
}
