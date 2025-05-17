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

class BasicInfoPage extends StatefulWidget {
  const BasicInfoPage({super.key});

  @override
  State<BasicInfoPage> createState() => _BasicInfoPageState();
}

class _BasicInfoPageState extends State<BasicInfoPage> {
  double width = 0; //to store the size of device
  double height = 0; //to store the size of device

  double fSize = 0; //font size
  double btnWidth = 0; //button width
  double btnHeight = 0; //button height
  double imageHieght = 0; //image height
  bool checked = false;
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
        backgroundColor: color.btnColor,
        title: Text(
          textAlign: TextAlign.center,
          "Set up Profile",
          style: GoogleFonts.kronaOne(
            color: color.colorText1,
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
                    Gap(20),
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
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          width: btnWidth * 1.2,
                          decoration: BoxDecoration(
                            color: color.btnColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            spacing: 5,
                            children: [
                              Text(
                                "Marriage Status",
                                style: GoogleFonts.roboto(
                                  fontSize: fSize * 1.2,
                                  color: color.colorText3,
                                ),
                              ),
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        checked = !checked;
                                      });
                                    },
                                    child: Row(
                                      spacing: 5,
                                      children: [
                                        Checkbox(
                                          value: checked,
                                          onChanged: (v) {},
                                        ),
                                        Text(
                                          "Single",
                                          style: GoogleFonts.kronaOne(
                                            color: color.colorText1,
                                            fontSize: fSize * 0.6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        checked = !checked;
                                      });
                                    },
                                    child: Row(
                                      spacing: 5,
                                      children: [
                                        Checkbox(
                                          value: checked,
                                          onChanged: (v) {},
                                        ),
                                        Text(
                                          "Married",
                                          style: GoogleFonts.kronaOne(
                                            color: color.colorText1,
                                            fontSize: fSize * 0.6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        checked = !checked;
                                      });
                                    },
                                    child: Row(
                                      spacing: 5,
                                      children: [
                                        Checkbox(
                                          value: checked,
                                          onChanged: (v) {},
                                        ),
                                        Text(
                                          "Seperated",
                                          style: GoogleFonts.kronaOne(
                                            color: color.colorText1,
                                            fontSize: fSize * 0.6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        checked = !checked;
                                      });
                                    },
                                    child: Row(
                                      spacing: 5,
                                      children: [
                                        Checkbox(
                                          value: checked,
                                          onChanged: (v) {},
                                        ),
                                        Text(
                                          "Widower/Widow",
                                          style: GoogleFonts.kronaOne(
                                            color: color.colorText1,
                                            fontSize: fSize * 0.6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        checked = !checked;
                                      });
                                    },
                                    child: Row(
                                      spacing: 5,
                                      children: [
                                        Checkbox(
                                          value: checked,
                                          onChanged: (v) {},
                                        ),
                                        Text(
                                          "Not aplicable",
                                          style: GoogleFonts.kronaOne(
                                            color: color.colorText1,
                                            fontSize: fSize * 0.6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: btnWidth * 1.2,
                          decoration: BoxDecoration(
                            color: color.btnColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            spacing: 10,
                            children: [
                              Text(
                                "Education level",
                                style: GoogleFonts.roboto(
                                  fontSize: fSize * 1.2,
                                  color: color.colorText3,
                                ),
                              ),
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        checked = !checked;
                                      });
                                    },
                                    child: Row(
                                      spacing: 5,
                                      children: [
                                        Checkbox(
                                          value: checked,
                                          onChanged: (v) {},
                                        ),
                                        Text(
                                          "High School",
                                          style: GoogleFonts.kronaOne(
                                            color: color.colorText1,
                                            fontSize: fSize * 0.6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        checked = !checked;
                                      });
                                    },
                                    child: Row(
                                      spacing: 5,
                                      children: [
                                        Checkbox(
                                          value: checked,
                                          onChanged: (v) {},
                                        ),
                                        Text(
                                          "Undergrad",
                                          style: GoogleFonts.kronaOne(
                                            color: color.colorText1,
                                            fontSize: fSize * 0.6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        checked = !checked;
                                      });
                                    },
                                    child: Row(
                                      spacing: 5,
                                      children: [
                                        Checkbox(
                                          value: checked,
                                          onChanged: (v) {},
                                        ),
                                        Text(
                                          "Postagraduate",
                                          style: GoogleFonts.kronaOne(
                                            color: color.colorText1,
                                            fontSize: fSize * 0.6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        checked = !checked;
                                      });
                                    },
                                    child: Row(
                                      spacing: 5,
                                      children: [
                                        Checkbox(
                                          value: checked,
                                          onChanged: (v) {},
                                        ),
                                        Text(
                                          "Not applicable",
                                          style: GoogleFonts.kronaOne(
                                            color: color.colorText1,
                                            fontSize: fSize * 0.6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Gap(20),
                    Button(text: "Next", width: btnWidth, size: fSize),
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
