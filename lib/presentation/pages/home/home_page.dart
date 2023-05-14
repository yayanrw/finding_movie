import 'package:auto_route/annotations.dart';
import 'package:finding_movie/core/config/constants.dart';
import 'package:finding_movie/core/theme/my_colors.dart';
import 'package:finding_movie/core/theme/my_text_theme.dart';
import 'package:finding_movie/generated/l10n.dart';
import 'package:finding_movie/presentation/widgets/home/banner_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 47),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).stream,
                        style: myTextTheme(color: MyColors.orangeStartGradient)
                            .titleLarge,
                      ),
                      Text(
                        S.of(context).everywhere,
                        style:
                            myTextTheme(color: MyColors.textWhite).titleLarge,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const BannerWidget(),
                  const SizedBox(height: 43),
                  Text(
                    S.of(context).trendingMovies,
                    style: myTextTheme().titleLarge,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
