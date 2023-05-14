import 'dart:ui';
import 'package:finding_movie/core/config/constants.dart';
import 'package:finding_movie/core/theme/my_colors.dart';
import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({Key? key, required this.widget}) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 67,
      width: 228,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(secondRadius),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: MyColors.bgTextColor.withOpacity(0.3),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                  width: 1.2,
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.white.withOpacity(0.0),
                  ],
                ),
              ),
              child: widget,
            ),
          ],
        ),
      ),
    );
  }
}
