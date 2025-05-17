import 'package:dating_app/Buttons/btncheckbox.dart';
import 'package:dating_app/Buttons/button.dart';
import 'package:dating_app/icons/icons.dart';
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

      fSize = Sizes.fontSize1;
      imageHieght = width * 0.2;
    } else if (width > 450) {
      btnWidth = Sizes.btnWidth2;
      fSize = Sizes.fontSize2;
      imageHieght = width * 0.08;
    }
    return Scaffold(
      appBar: AppBar(
        leadingWidth: btnWidth * 0.2,

        leading: Container(
          margin: EdgeInsets.all(5),
          height: width * 0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color.backbtnColr,
          ),

          child: icons.arrowLeft,
        ),
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
      body: Stack(
        children: [
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 20,
                      width: width * 0.8,
                      margin: EdgeInsets.all(1),
                      child: Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: width * 0.6,

                            child: LinearProgressBar(
                              minHeight: 10,
                              dotsSpacing: EdgeInsets.all(10),
                              maxSteps: 9,
                              progressType:
                                  LinearProgressBar.progressTypeLinear,
                              progressColor: color.progressColor,
                              backgroundColor: color.bgProgressColor,
                              currentStep: 2,
                            ),
                          ),
                          Text(
                            "1/9",
                            style: GoogleFonts.kronaOne(
                              color: color.colorText3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
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
                              style: GoogleFonts.kronaOne(
                                fontSize: fSize,
                                color: color.colorText1,
                              ),
                            ),
                            Gap(20),
                            BtnCheckBox(
                              text: "Mariage partner",
                              size: fSize,
                              width: btnWidth,
                            ),
                            Gap(20),
                            BtnCheckBox(
                              text: "Talk Buddy",
                              size: fSize,
                              width: btnWidth,
                            ),
                            Gap(20),
                            BtnCheckBox(
                              text: "Friend",
                              size: fSize,
                              width: btnWidth,
                            ),
                            Gap(20),
                            BtnCheckBox(
                              text: "Worship partner",
                              size: fSize,
                              width: btnWidth,
                            ),
                            Gap(20),
                            BtnCheckBox(
                              text: "Anything",
                              size: fSize,
                              width: btnWidth,
                            ),
                            Gap(100),
                            Button(text: "Next", width: btnWidth, size: fSize),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
