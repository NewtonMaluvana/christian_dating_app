import 'package:dating_app/Buttons/btncheckbox.dart';
import 'package:dating_app/Buttons/button.dart';
import 'package:dating_app/icons/icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:dating_app/Fonts/size.dart';

import 'package:dating_app/colors/colors.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:custom_bottom_picker/custom_bottom_picker.dart';

class BasicInfoPage extends StatefulWidget {
  const BasicInfoPage({super.key});

  @override
  State<BasicInfoPage> createState() => _BasicInfoPageState();
}

class _BasicInfoPageState extends State<BasicInfoPage> {
  double width = 0; //to store the size of device
  double height = 0; //to store the size of device
  late WeightSliderController _controller;
  int intHeight = 30;

  bool isCm = true;
  final List<int> heights = List.generate(151, (i) => 100 + i);
  double fSize = 0; //font size
  double btnWidth = 0; //button width
  double btnHeight = 0; //button height
  double imageHieght = 0; //image height
  bool checked = false;
  final List<String> countryData = [
    "Black",
    "White",
    "Black/African",
    "Black American",
    "White",
    "mixed race",
    "Caucasian",
    "Hispanic",
    "Asian",
    "Caribbean",
    "European",
    "Indian",
    "Middle Eastern",
    "Others",
  ];
  int RaceIndex = 13;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void listPicker() async {
    final result = await showCustomBottomPicker(
      useSafeArea: true,
      barrierColor: Colors.amber,
      context: context,
      options: const CustomBottomPickerOptions(pickerTitle: "Ethiicity"),
      sections: [
        CustomBottomPickerSection.list(
          id: "ethinicty",
          defaultIndex: RaceIndex,
          children: [
            "Black",
            "White",
            "Black/African",
            "Black American",

            "White",
            "mixed race",
            "Caucasian",
            "Hispanic",
            "Asian",
            "Caribbean",
            "European",
            "Indian",
            "Middle Eastern",
            "Others",
          ],
        ),
      ],
    );
    if (result != null) {
      setState(() {
        RaceIndex = result.getById("ethinicty")!.toInt();
      });

      return;
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = WeightSliderController(
      initialWeight: intHeight.toDouble(),
      minWeight: 0,
      interval: 0.1,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                        GestureDetector(
                          onTap: () {
                            listPicker();
                          },
                          child: Container(
                            padding: EdgeInsets.all(1),
                            width: btnWidth * 1.2,

                            decoration: BoxDecoration(
                              color: color.btnColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "Ethnicity",
                                  style: GoogleFonts.kronaOne(
                                    color: color.colorText3,
                                    fontSize: fSize,
                                  ),
                                ),
                                Gap(20),
                                Text(
                                  countryData[RaceIndex],
                                  style: GoogleFonts.kronaOne(
                                    color: color.colorText1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(20),
                    Text(
                      "Height",
                      style: GoogleFonts.kronaOne(
                        fontSize: fSize,
                        color: color.colorText3,
                      ),
                    ),
                    Gap(5),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            width: 1,
                            color: color.btnColor,
                          ),
                        ),
                      ),
                      width: btnWidth * 1.2,
                      child: CupertinoPicker(
                        itemExtent: 40,
                        onSelectedItemChanged: (v) {
                          intHeight = v;
                        },
                        children:
                            heights
                                .map((v) => Center(child: Text('$v cm')))
                                .toList(),
                      ),
                    ),
                    Gap(100),
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
