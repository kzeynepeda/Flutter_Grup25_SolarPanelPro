import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";

class GiriWidget extends StatelessWidget {
  // Define colors
  final Color primaryColor = Color.fromRGBO(38, 118, 60, 1);
  final Color textColor = Color.fromRGBO(255, 255, 255, 1);
  final Color backgroundColor = Color.fromRGBO(255, 255, 255, 1);

  // Define text styles
  final TextStyle titleTextStyle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 40,
    letterSpacing: 0,
    fontWeight: FontWeight.normal,
    height: 1,
    color: textColor,
  );

  final TextStyle subtitleTextStyle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 20,
    letterSpacing: 0,
    fontWeight: FontWeight.normal,
    height: 1,
    color: textColor,
  );

  // Define image path
  final String imagePath = 'assets/images/giris.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 844,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: backgroundColor,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 390,
              height: 844,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          buildTitle(),
          buildSubtitle(),
          buildButton(),
          buildVector(),
        ],
      ),
    );
  }

  Widget buildTitle() {
    return Positioned(
      top: 257,
      left: 49,
      child: Text('GüneşPlan Pro', style: titleTextStyle),
    );
  }

  Widget buildSubtitle() {
    return Positioned(
      top: 403,
      left: 24,
      child: Text('Teknik bilgiye ihtiyacınız olmadan ne kadkadar enerji üretebileceğinizi öğrenin.', style: subtitleTextStyle),
    );
  }

  Widget buildButton() {
    return Positioned(
      top: 573,
      left: 93,
      child: Container(
        width: 227,
        height: 47,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          border: Border.all(
            color: primaryColor,
            width: 1,
          ),
          gradient: LinearGradient(
            begin: Alignment(1, 0),
            end: Alignment(0, 1),
            colors: [Color.fromRGBO(0, 0, 0, 1), primaryColor],
          ),
        ),
        child: Center(
          child: Text('Keşfetmeye Başla', style: TextStyle(color: textColor)),
        ),
      ),
    );
  }

  Widget buildVector() {
    return Positioned(
      top: 117,
      left: 146,
      child: Container(
        width: 120,
        height: 140,
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        child: Center(
          child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector'),
        ),
      ),
    );
  }
}