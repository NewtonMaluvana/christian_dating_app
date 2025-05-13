import 'package:dating_app/colors/colors.dart';
import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final String hintText;

  const TextInput({super.key, required this.hintText});

  @override
  State<TextInput> createState() => _TextInput();
}

class _TextInput extends State<TextInput> {
  double width = 0;

  Widget inputText() {
    return SizedBox(
      width: width * 0.7,
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: color.colorText1, fontSize: 16.sp),
          filled: true,
          fillColor: color.colorInput,
          hintText: widget.hintText,
          border: OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 104, 46, 155),
            ),
          ),
        ),
        style: TextStyle(color: color.colorText1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return inputText();
  }
}
