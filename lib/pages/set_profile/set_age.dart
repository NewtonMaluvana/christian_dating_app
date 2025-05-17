import 'package:bottom_picker/resources/arrays.dart';
import 'package:dating_app/Buttons/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/icons/icons.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:dating_app/Fonts/size.dart';
import 'package:dating_app/colors/colors.dart';
import 'package:gap/gap.dart';
import 'package:custom_bottom_picker/custom_bottom_picker.dart';
import 'package:jiffy/jiffy.dart';

import 'package:bottom_picker/bottom_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class SetAgePage extends StatefulWidget {
  const SetAgePage({super.key});

  @override
  State<SetAgePage> createState() => _SetAgePageState();
}

class _SetAgePageState extends State<SetAgePage> {
  double width = 0; //to store the size of device
  double height = 0; //to store the size of device
  int day = 01;
  int year = 2025;
  String month = "Jan";
  double fSize = 0; //font size
  double btnWidth = 0; //button width
  double btnHeight = 0; //button height
  double imageHieght = 0; //image height
  bool checked = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //format month number into a string

  String getMonthName(int monthNumber) {
    final date = DateTime(2023, monthNumber);
    return Jiffy.parseFromDateTime(
      date,
    ).format(pattern: 'MMMM'); // Full month name
  }

  //date picker
  void datePicer(BuildContext context) {
    BottomPicker.date(
      buttonWidth: 200,
      pickerTextStyle: TextStyle(color: Colors.white),
      backgroundColor: Colors.deepPurpleAccent,

      dateOrder: DatePickerDateOrder.dmy,
      onSubmit: (value) {},
      onChange: (p0) {
        setState(() {
          year = int.parse(p0.toString().split("-")[0]);
          month = getMonthName(int.parse(p0.toString().split("-")[1]));
          day = int.parse(p0.toString().split("-")[2].split(" ")[0]);
        });
        print(p0.toString().split("-")[2].split(" ")[0]);
      },
      bottomPickerTheme: BottomPickerTheme.morningSalad,
      pickerTitle: Text("Date of birth"),
      minDateTime: DateTime(1900, 5, 1),
      initialDateTime: DateTime.now(),
      maxDateTime: null,
    ).show(context);
  }

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
                            "2/9",
                            style: GoogleFonts.kronaOne(
                              color: color.colorText3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(50),
                    Text(
                      "Date of Birth",
                      style: GoogleFonts.kronaOne(
                        fontSize: fSize,
                        color: color.colorText3,
                      ),
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 10,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: btnWidth * 0.3,
                          height: 40,
                          decoration: BoxDecoration(
                            color: color.btnColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            day.toString(),
                            style: GoogleFonts.kronaOne(
                              color: color.colorText1,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: btnWidth * 0.3,
                          height: 40,
                          decoration: BoxDecoration(
                            color: color.btnColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            month.substring(0, 3),
                            style: GoogleFonts.kronaOne(
                              color: color.colorText1,
                            ),
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          width: btnWidth * 0.3,
                          height: 40,
                          decoration: BoxDecoration(
                            color: color.btnColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            year.toString(),
                            style: GoogleFonts.kronaOne(
                              color: color.colorText1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(20),
                    SizedBox(
                      width: btnWidth * 0.8,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          datePicer(context);
                        },
                        child: Text("set"),
                      ),
                    ),
                    Gap(40),
                    Text(
                      "Gender",
                      style: GoogleFonts.kronaOne(
                        color: color.colorText3,
                        fontSize: fSize * 1.8,
                      ),
                    ),
                    Gap(20),
                    Row(
                      spacing: 50,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Checkbox(value: checked, onChanged: (v) {}),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  checked = !checked;
                                });
                              },
                              child: Image(
                                image: AssetImage("images/male.png"),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Checkbox(value: checked, onChanged: (v) {}),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  checked = !checked;
                                });
                              },
                              child: Image(
                                image: AssetImage("images/female.png"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(100),
                    Button(size: fSize, width: btnWidth, text: "Next"),
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
