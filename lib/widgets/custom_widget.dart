import 'package:FlutterApp/constants/app_constant.dart';
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

class CustomText extends StatelessWidget {
  final String title;
  final Color textColor;
  final double size;
  FontWeight fontWeightValue;
  CustomText(this.title, this.textColor, this.size, this.fontWeightValue);

  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: size,
          color: textColor,
          fontFamily: 'SFProText',
          fontWeight: fontWeightValue),

      // On pressing the raised button
    );
  }
}

// BoxDecoration decorationButton = BoxDecoration(
//   color: _color,
//   border: Border.all(
//     color: Colors.black,
//     width: 0.0,
//   ),
//   borderRadius: BorderRadius.circular(_borderRedius),
// );
class Answer extends StatelessWidget {
  final Function selectedHandler;
  Answer(this.selectedHandler);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: flatButtonStyle,
      child: CustomText('Answer 4', Colors.black, fontSize20, FontWeight.w200),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color _color;
  final double _borderRedius;
  final Widget child;
  CustomContainer(
    this._color,
    this._borderRedius,
    this.child,
  );
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: _color,
          border: Border.all(
            color: Colors.white,
            width: 0.0,
          ),
          borderRadius: BorderRadius.circular(_borderRedius),
        ),
        child: child);
  }
}
