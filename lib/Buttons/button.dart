import 'package:dating_app/Fonts/Fonts.dart';
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
      width: widget.width,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(widget.text, style: TextStyle(fontSize: 20)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return getButton();
  }
}
