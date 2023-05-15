import 'package:finding_movie/core/theme/my_colors.dart';
import 'package:finding_movie/core/theme/my_text_theme.dart';
import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    Key? key,
    required this.icon,
    required this.value,
    required this.endText,
  }) : super(key: key);

  final IconData icon;
  final String value;
  final String endText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: MyColors.textGrey2,
          size: 18,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          value,
          style: myTextTheme(color: MyColors.textGrey2).titleSmall,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          endText,
          style: myTextTheme(color: MyColors.textGrey2).titleSmall,
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
