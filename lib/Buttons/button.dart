import 'package:dating_app/Fonts/Fonts.dart';
import 'package:dating_app/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_widget_cache.dart';

class Button extends StatefulWidget {
  final String text;
  final double width;
  const Button({super.key, required this.text, required this.width});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  Widget getButton() {
    return SizedBox(
      height: 40,
      width: widget.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color.btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: widget.width * 0.06,
            color: color.colorText2,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return getButton();
  }
}
