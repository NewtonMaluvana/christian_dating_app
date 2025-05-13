import 'package:dating_app/Buttons/button.dart';
import 'package:dating_app/TextField/TextFiled.dart';
import 'package:dating_app/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  double width = 0; //to store the size of device

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: color.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextInput(hintText: "Email Address", size: width * 0.04),
            Gap(20),
            TextInput(hintText: "Password", size: width * 0.04),
            Radio(value: 1, groupValue: 3, onChanged: null),
            Gap(20),
            Button(text: "Create Account", width: width * 0.5),
          ],
        ),
      ),
    );
  }
}
