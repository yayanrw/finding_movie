import 'package:finding_movie/core/theme/my_colors.dart';
import 'package:flutter/material.dart';

TextTheme myTextTheme({Color? color, FontWeight? fontWeight}) {
  final Color newColor = color ?? MyColors.textWhite;

  return TextTheme(
    titleLarge: TextStyle(
      fontSize: 25.95,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 1.5,
      color: newColor,
    ),
    titleMedium: TextStyle(
      fontSize: 17.3,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 1.5,
      color: newColor,
    ),
    titleSmall: TextStyle(
      fontSize: 12.98,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 1.5,
      color: newColor,
    ),
    labelSmall: TextStyle(
      fontSize: 8.64,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 0,
      color: newColor,
    ),
  );
}
