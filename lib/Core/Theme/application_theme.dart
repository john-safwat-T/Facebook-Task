import 'package:facebook_task/Core/Utils/colors_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApplicationTheme {
  static final ThemeData _appTheme = ThemeData(
      scaffoldBackgroundColor: ColorsProvider.white,
      primaryColor: ColorsProvider.blue,
      secondaryHeaderColor: ColorsProvider.gray,
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: ColorsProvider.gray),
        bodyLarge: TextStyle(color: ColorsProvider.gray),
        bodySmall: TextStyle(color: ColorsProvider.gray),
      ),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 1, color: ColorsProvider.gray)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 1, color: ColorsProvider.gray)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 1, color: ColorsProvider.gray)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(width: 1, color: Colors.red)),
          hintStyle: TextStyle(
              fontSize: 16,
              color: ColorsProvider.gray,
              fontWeight: FontWeight.w500),
          filled: true,
          fillColor: ColorsProvider.textFormFieldFillColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsProvider.blue),
        foregroundColor: WidgetStateProperty.all(ColorsProvider.white),
        shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        elevation: WidgetStateProperty.all(0),
      )),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ));

  static ThemeData get appTheme => _appTheme;
}
