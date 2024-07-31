import 'package:flutter/material.dart';

class ColorsProvider {
  static const Color _white = Color(0xffffffff);
  static const Color _blue = Color(0xff1877F2);
  static const Color _gray = Color(0xff898F9C);
  static const Color _black = Color(0xff242527);
  static final Color _textFormFieldFillColor =
      const Color(0xffD6DFF1).withOpacity(0.47);

  static Color get white => _white;

  static Color get blue => _blue;

  static Color get gray => _gray;

  static Color get black => _black;

  static Color get textFormFieldFillColor => _textFormFieldFillColor;
}
