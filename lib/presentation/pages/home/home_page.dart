import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:finding_movie/core/config/constants.dart';
import 'package:finding_movie/core/router/router.dart';
import 'package:finding_movie/core/theme/my_colors.dart';
import 'package:finding_movie/core/theme/my_text_theme.dart';
import 'package:finding_movie/core/utils/request_state.dart';
import 'package:finding_movie/domain/entities/movies/movie_trending.dart';
import 'package:finding_movie/generated/l10n.dart';
import 'package:finding_movie/presentation/pages/home/home_notifier.dart';
import 'package:finding_movie/presentation/widgets/home/banner_widget.dart';
import 'package:finding_movie/presentation/widgets/home/trending_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 47),
                _buildStreamTitle(context),
                const SizedBox(height: 40),
                const BannerWidget(),
                const SizedBox(height: 43),
                _buildTrendingSection(
                  context,
                  S.of(context).trendingMovies,
                  (data) => data.trendingMovies,
                ),
                const SizedBox(height: 43),
                _buildTrendingSection(
                  context,
                  S.of(context).trendingTvShows,
                  (data) => data.trendingTvShows,
                ),
                const SizedBox(height: 43),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStreamTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          S.of(context).stream,
          style: myTextTheme(color: MyColors.orangeStartGradient).titleLarge,
        ),
        Text(
          S.of(context).everywhere,
          style: myTextTheme(color: MyColors.textWhite).titleLarge,
        ),
      ],
    );
  }

  Widget _buildTrendingSection(
    BuildContext context,
    String title,
    List<dynamic> Function(HomeNotifier) getData,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: myTextTheme().titleLarge,
        ),
        const SizedBox(height: 26),
        Consumer<HomeNotifier>(
          builder: (context, data, _) {
            if (data.requestStateMovies == RequestState.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (data.requestStateMovies == RequestState.loaded) {
              final items = getData(data).map((item) {
                return TrendingImageWidget(
                  imgUrl: '$imageDir${item.backdropPath}',
                  title: item is MovieTrending ? item.title : item.name,
                  rating: item.voteAverage,
                  onTap: () {
                    context.router.push(DetailRoute(item: item));
                  },
                );
              }).toList();

              return CarouselSlider(
                options: _carouselOptions,
                items: items,
              );
            } else {
              return Center(
                key: const Key('error_message'),
                child: Text(data.messageMovies),
              );
            }
          },
        ),
      ],
    );
  }

  final _carouselOptions = CarouselOptions(
    aspectRatio: 2.0,
    enlargeCenterPage: true,
    enableInfiniteScroll: false,
    initialPage: 2,
    autoPlay: false,
    height: 363,
  );

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final homeNotifier = Provider.of<HomeNotifier>(context, listen: false);
      homeNotifier.fetchTrendingMovies();
      homeNotifier.fetchTrendingTvShows();
    });
  }
}
