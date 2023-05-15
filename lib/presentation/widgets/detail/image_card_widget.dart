import 'package:finding_movie/core/config/constants.dart';
import 'package:flutter/material.dart';

class ImageCardWidget extends StatelessWidget {
  const ImageCardWidget({Key? key, required this.onTap, required this.imgUrl})
      : super(key: key);

  final VoidCallback onTap;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: 154,
          height: 114,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(defaultRadius),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  imgUrl,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
