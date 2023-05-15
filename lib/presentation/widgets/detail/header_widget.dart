import 'package:auto_route/auto_route.dart';
import 'package:finding_movie/core/config/constants.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key, required this.id, required this.backdropPath})
      : super(key: key);

  final int id;
  final String backdropPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      width: double.infinity,
      child: ClipRRect(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Hero(
              tag: 'detail_image_$id',
              child: Image.network(
                "$imageDir${backdropPath}",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: GestureDetector(
                onTap: () {
                  context.router.pop();
                },
                child: const Icon(
                  Icons.keyboard_arrow_left_rounded,
                  color: Colors.white,
                  size: 56,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
