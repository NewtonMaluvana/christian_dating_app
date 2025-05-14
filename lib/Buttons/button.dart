import 'package:dating_app/colors/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String text;
  final double width;
  final double size;
  const Button({
    super.key,
    required this.text,
    required this.width,
    required this.size,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  Widget getButton() {
    return SizedBox(
      height: 50,
      width: widget.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 20,
          backgroundColor: color.btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(
          widget.text,
          style: TextStyle(fontSize: widget.size, color: color.colorText2),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return getButton();
  }
}
