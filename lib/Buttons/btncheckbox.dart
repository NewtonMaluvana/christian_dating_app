import 'package:dating_app/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BtnCheckBox extends StatefulWidget {
  final String Text;
  final double size;
  final double width;
  final double? height;
  final TextEditingController? editController;

  const BtnCheckBox({
    super.key,
    required this.Text,
    required this.size,
    required this.width,
    this.editController,
    this.height,
  });

  @override
  State<BtnCheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<BtnCheckBox> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          checked != checked;
        });
      },
      child: Container(
        width: widget.width * 1.2,
        decoration: BoxDecoration(
          color: color.checBoxColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Checkbox(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                ),
                checkColor: Colors.white,
                activeColor: color.checkColor2,
                value: checked,
                onChanged: (value) {
                  setState(() {
                    checked = !checked;
                  });
                },
              ),
            ),
            Text(
              widget.Text,
              textAlign: TextAlign.end,
              style: GoogleFonts.kronaOne(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
