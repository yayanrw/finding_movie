import 'package:finding_movie/core/config/constants.dart';
import 'package:finding_movie/core/theme/my_colors.dart';
import 'package:finding_movie/core/theme/my_text_theme.dart';
import 'package:flutter/material.dart';

ThemeData myThemes() {
  return ThemeData(
    scaffoldBackgroundColor: MyColors.bgScaffoldBackground,
    primaryColor: MyColors.orangeStartGradient,
    fontFamily: fontFamily,
    textTheme: myTextTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}