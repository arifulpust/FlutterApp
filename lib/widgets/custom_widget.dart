import 'package:flutter/material.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.black87,
  minimumSize: Size(88, 36),
  backgroundColor: Colors.green,
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);

class TitleText extends StatelessWidget {
  final String title;
  final Color textColor;
  final double size;

  TitleText(this.title, this.textColor, this.size);
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: size,
          color: textColor,
          fontFamily: 'SFProTextRegular',
          fontWeight: FontWeight.w500),

      // On pressing the raised button
    );
  }
}
