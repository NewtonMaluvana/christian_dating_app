import 'package:dating_app/Buttons/btncheckbox.dart';
import 'package:dating_app/Buttons/button.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
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

  double fSize = 0; //font size
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

      fSize = Size.fontSize1;
      imageHieght = width * 0.2;
    } else if (width > 450) {
      btnWidth = Size.btnWidth2;
      fSize = Size.fontSize2;
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
            fontSize: fSize,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      backgroundColor: color.bgColor,
      body: Column(
        children: [
          LinearProgressBar(
            dotsSpacing: EdgeInsets.all(10),
            maxSteps: 9,
            progressType: LinearProgressBar.progressTypeDots,
            progressColor: color.progressColor,
            backgroundColor: color.bgProgressColor,
            currentStep: 2,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 100),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextInput(
                    hintText: "Username",
                    size: fSize * .8,
                    width: btnWidth * 1.3,
                    height: 50,
                  ),
                  Text(
                    "..this is how you will appear to other users",
                    style: GoogleFonts.kronaOne(
                      fontSize: fSize * 0.5,
                      color: color.colorText3,
                    ),
                  ),
                  Gap(20),
                  Text(
                    "Looking for",
                    style: GoogleFonts.kronaOne(fontSize: fSize),
                  ),
                  Gap(20),
                  BtnCheckBox(
                    Text: "Mariage partner",
                    size: fSize,
                    width: btnWidth,
                  ),
                  Gap(20),
                  BtnCheckBox(Text: "Talk Buddy", size: fSize, width: btnWidth),
                  Gap(20),
                  BtnCheckBox(Text: "Friend", size: fSize, width: btnWidth),
                  Gap(20),
                  BtnCheckBox(
                    Text: "Worship partner",
                    size: fSize,
                    width: btnWidth,
                  ),
                  Gap(20),
                  BtnCheckBox(Text: "Anything", size: fSize, width: btnWidth),
                  Gap(100),
                  Button(text: "Next", width: btnWidth, size: fSize),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
