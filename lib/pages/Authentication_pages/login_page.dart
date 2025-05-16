import 'package:dating_app/Buttons/button.dart';
import 'package:dating_app/Fonts/size.dart';
import 'package:dating_app/TextField/TextField.dart';
import 'package:dating_app/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
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
          "Sign in",
          style: GoogleFonts.kronaOne(
            color: color.btnColor,
            fontSize: fZize,
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
                        height: 40,
                      ),
                      Gap(20),
                      TextInput(
                        hintText: "Password",
                        size: fZize * .6,
                        width: btnWidth * 1.3,
                        height: 40,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: (width / 2) * 0.6),
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {},
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Forgot Password?",
                              style: GoogleFonts.kronaOne(
                                color: color.colorText2,
                                fontWeight: FontWeight.bold,
                                fontSize: fZize * 0.6,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Gap(20),
                      Button(text: "Sign in", width: btnWidth, size: fZize),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dont Have an Account?",
                              style: GoogleFonts.roboto(fontSize: fZize * 0.6),
                            ),
                            Gap(5),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "sign up",
                                style: GoogleFonts.kronaOne(
                                  fontSize: fZize * 0.6,
                                  color: color.colorText3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(20),
                      Container(
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Or Sign With ",
                            style: GoogleFonts.roboto(
                              fontSize: fZize * 0.8,
                              color: color.colorText2,
                            ),
                          ),
                        ),
                      ),
                      Gap(20),
                      Container(
                        alignment: Alignment.center,

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                              child: Image(
                                height: imageHieght,
                                fit: BoxFit.contain,

                                image: AssetImage('images/google.jpg'),
                              ),
                            ),
                            Gap(20),
                            ClipOval(
                              child: Image(
                                fit: BoxFit.fill,
                                height: imageHieght,
                                image: AssetImage('images/facebook.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
