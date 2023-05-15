import 'package:finding_movie/core/config/constants.dart';
import 'package:finding_movie/core/theme/my_colors.dart';
import 'package:finding_movie/core/theme/my_text_theme.dart';
import 'package:finding_movie/generated/l10n.dart';
import 'package:finding_movie/presentation/widgets/home/badge_widget.dart';
import 'package:flutter/material.dart';

class TrendingImageWidget extends StatelessWidget {
  const TrendingImageWidget({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.rating,
    required this.onTap,
  }) : super(key: key);

  final String imgUrl;
  final String title;
  final double rating;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 363,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(defaultRadius),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                imgUrl,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 17,
                right: 17,
                child: BadgeWidget(
                  height: 56,
                  width: 83,
                  widget: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            S.of(context).imdb,
                            style: myTextTheme().labelSmall,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    colors: [
                                      MyColors.yellowStartGradient,
                                      MyColors.yellowEndGradient,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ).createShader(bounds);
                                },
                                child: const Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                rating.toStringAsFixed(1),
                                style: myTextTheme().titleMedium,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 17,
                right: 17,
                bottom: 22,
                child: BadgeWidget(
                  height: 82,
                  width: 245,
                  widget: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Center(
                      child: Text(
                        title,
                        style: myTextTheme().titleMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
