import 'package:finding_movie/core/theme/my_colors.dart';
import 'package:flutter/material.dart';

TextTheme myTextTheme({Color? color, FontWeight? fontWeight}) {
  final Color newColor = color ?? MyColors.textWhite;

  return TextTheme(
    titleLarge: TextStyle(
      fontSize: 28.91,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 0,
      color: newColor,
    ),
    titleMedium: TextStyle(
      fontSize: 19.27,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 0,
      color: newColor,
    ),
    titleSmall: TextStyle(
      fontSize: 14.45,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 2.1,
      color: newColor,
    ),
    labelSmall: TextStyle(
      fontSize: 9.64,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 0,
      color: newColor,
    ),
  );
}
