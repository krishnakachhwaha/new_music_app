import 'package:flutter/material.dart';

class MyColor {
  static const Color bgColor = Color(0xff9ef8e6);
}

TextStyle mTextStyle10(
    {color = Colors.black, fontStyle = FontStyle.normal, fontSize = 10}) {
  return mTextStyle10(fontSize: 10, fontStyle: FontStyle, color: Color);
}

TextStyle mTextStyle15({
  mColor = Colors.black,
  fontStyle = FontStyle.normal,
  required int fontSize,
  required int color,
}) {
  return mTextStyle15(fontSize: 15, fontStyle: FontStyle.normal, color: mColor);
}

TextStyle mTextStyle18({
  mColor = Colors.black,
  fontStyle = FontStyle.normal,
  required int fontSize,
  required int color,
}) {
  return mTextStyle18(fontSize: 18, color: mColor, fontStyle: FontStyle.normal);
}

TextStyle mTextStyle22({
  mColor = Colors.black,
  fontStyle = FontStyle.normal,
  required int fontSize,
  required int color,
}) {
  return mTextStyle22(fontSize: 22, fontStyle: FontStyle.normal, color: mColor);
}

TextStyle mTextStyle25({
  mColor = Colors.black,
  fontStyle = FontStyle.normal,
  required int fontSize,
  required int color,
}) {
  return mTextStyle25(fontSize: 25, color: mColor, fontStyle: FontStyle.normal);
}
