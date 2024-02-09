import 'package:flutter/material.dart';

Color primaryColor = const Color(0xFF0A8ED9);
Color primaryLightColor = const Color.fromRGBO(10, 142, 217, 50);
Color greyColor = const Color(0xff858585);
Color lightGreyColor = const Color(0xffF7F7F7);
Color whiteColor = const Color(0xFFFFFFFF);
Color backgroundColor = const Color(0xFFFAFAFA);

const linearGradient = LinearGradient(
  colors: [
    Color(0xffA0DAFB),
    Color(0xff0A8ED9),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const customShadow = [
  BoxShadow(
    color: Color.fromARGB(6, 0, 0, 0),
    blurRadius: 0,
    spreadRadius: 1,
    offset: Offset(0, 0),
  ),
  BoxShadow(
    color: Color.fromARGB(6, 0, 0, 0),
    blurRadius: 1,
    spreadRadius: -0.5,
    offset: Offset(0, 1),
  ),
  BoxShadow(
    color: Color.fromARGB(6, 0, 0, 0),
    blurRadius: 3,
    spreadRadius: -1.5,
    offset: Offset(0, 3),
  ),
  BoxShadow(
    color: Color.fromARGB(6, 0, 0, 0),
    blurRadius: 6,
    spreadRadius: -3,
    offset: Offset(0, 6),
  ),
  BoxShadow(
    color: Color.fromARGB(6, 0, 0, 0),
    blurRadius: 12,
    spreadRadius: -6,
    offset: Offset(0, 12),
  ),
  BoxShadow(
    color: Color.fromARGB(6, 0, 0, 0),
    blurRadius: 24,
    spreadRadius: -12,
    offset: Offset(0, 24),
  ),
];
