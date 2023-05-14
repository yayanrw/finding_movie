import 'package:finding_movie/core/config/constants.dart';
import 'package:finding_movie/core/theme/my_colors.dart';
import 'package:finding_movie/core/theme/my_text_theme.dart';
import 'package:finding_movie/generated/l10n.dart';
import 'package:finding_movie/presentation/widgets/home/badge_widget.dart';
import 'package:finding_movie/presentation/widgets/icon/play_icon_widget.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 206,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(defaultRadius),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/header_placeholder.png",
                fit: BoxFit.cover),
            Positioned(
              left: 12.98,
              bottom: 8.65,
              child: BadgeWidget(
                widget: SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 21.63),
                        child: Container(
                            width: 30.28,
                            height: 30.28,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  MyColors.orangeStartGradient,
                                  MyColors.orangeEndGradient,
                                ],
                              ),
                            ),
                            child: const PlayIconWidget(isActive: true)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).letsWatchMovies,
                            style: myTextTheme(
                              color: MyColors.textGrey,
                            ).titleSmall,
                          ),
                          Text(
                            S.of(context).findingMovie,
                            style: myTextTheme(
                              color: MyColors.textWhite,
                            ).titleMedium,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
