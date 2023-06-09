import 'package:finding_movie/core/theme/my_colors.dart';
import 'package:flutter/material.dart';

TextTheme myTextTheme({Color? color, FontWeight? fontWeight}) {
  final Color newColor = color ?? MyColors.textWhite;

  return TextTheme(
    titleLarge: TextStyle(
      fontSize: 29,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 1.5,
      color: newColor,
    ),
    titleMedium: TextStyle(
      fontSize: 19,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 1.5,
      color: newColor,
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 1.5,
      color: newColor,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 0,
      color: newColor,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 0,
      color: newColor,
    ),
  );
}
