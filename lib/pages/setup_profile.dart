import 'package:dating_app/Buttons/button.dart';

import 'package:dating_app/Fonts/size.dart';
import 'package:dating_app/TextField/TextField.dart';
import 'package:dating_app/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SetupName extends StatefulWidget {
  const SetupName({super.key});

  @override
  State<SetupName> createState() => _SetupNameState();
}

class _SetupNameState extends State<SetupName> {
  double width = 0; //to store the size of device
  double height = 0; //to store the size of device

  double fZize = 0; //font size
  double btnWidth = 0; //button width
  double btnHeight = 0; //button height
  double imageHieght = 0; //image height
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    if (width <= 450) {
      btnWidth = width * 0.6;

      fZize = Size.fontSize1;
      imageHieght = width * 0.2;
    } else if (width > 450) {
      btnWidth = Size.btnWidth2;
      fZize = Size.fontSize2;
      imageHieght = width * 0.08;
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          textAlign: TextAlign.center,
          "Set up Profile",
          style: GoogleFonts.kronaOne(
            color: color.colorText2,
            fontSize: fZize,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      backgroundColor: color.bgColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 200),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextInput(
                hintText: "Email Address",
                size: fZize * .6,
                width: btnWidth * 1.3,
              ),
              Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
