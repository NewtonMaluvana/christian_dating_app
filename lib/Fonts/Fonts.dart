import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Fonts extends StatefulWidget {
  final String text;
  const Fonts({super.key, required this.text});

  @override
  State<Fonts> createState() => _Fonts();
}

class _Fonts extends State<Fonts> {
  Widget getText() {
    return Text(
      widget.text,
      style: GoogleFonts.roboto(fontSize: 30, color: Colors.black),
    );
  }

  @override
  Widget build(BuildContext context) {
    return getText();
  }
}
