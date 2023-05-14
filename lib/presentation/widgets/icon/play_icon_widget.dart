import 'package:finding_movie/core/theme/my_colors.dart';
import 'package:flutter/material.dart';

class PlayIconWidget extends StatelessWidget {
  const PlayIconWidget({Key? key, required this.isActive}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: [
              MyColors.bgWhiteStartGradient,
              MyColors.bgWhiteEndGradient,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds);
        },
        child: const Icon(
          Icons.play_arrow_rounded,
          color: Colors.white,
        ),
      );
    } else {
      return Icon(
        Icons.play_arrow_rounded,
        color: MyColors.bgTextColor.withOpacity(0.4),
      );
    }
  }
}
