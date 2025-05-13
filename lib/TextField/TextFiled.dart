import 'package:dating_app/colors/colors.dart';
import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final String hintText;
  final double size;

  const TextInput({super.key, required this.hintText, required this.size});

  @override
  State<TextInput> createState() => _TextInput();
}

class _TextInput extends State<TextInput> {
  double width = 0;

  Widget inputText() {
    return SizedBox(
      width: width * 0.6,
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: color.colorText1, fontSize: widget.size),
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
