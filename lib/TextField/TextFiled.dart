import 'package:dating_app/colors/colors.dart';
import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final String hintText;
  final double size;
  final double width;

  const TextInput({
    super.key,
    required this.hintText,
    required this.size,
    required this.width,
  });

  @override
  State<TextInput> createState() => _TextInput();
}

class _TextInput extends State<TextInput> {
  double width = 0;

  Widget inputText() {
    return Container(
      margin: EdgeInsets.all(5),
      alignment: Alignment.center,

      width: widget.width,
      height: 40,
      child: TextField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: color.colorText2, fontSize: widget.size),
          filled: true,

          fillColor: color.colorInput,
          hintText: widget.hintText,
          border: OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 104, 46, 155),
            ),
          ),
        ),
        style: TextStyle(color: color.colorText2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return inputText();
  }
}
