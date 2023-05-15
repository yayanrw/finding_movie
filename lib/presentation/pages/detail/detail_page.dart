import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:finding_movie/core/theme/my_colors.dart';
import 'package:finding_movie/core/theme/my_text_theme.dart';
import 'package:finding_movie/core/utils/request_state.dart';
import 'package:finding_movie/domain/entities/movies/movie_detail.dart';
import 'package:finding_movie/generated/l10n.dart';
import 'package:finding_movie/presentation/pages/detail/detail_notifier.dart';
import 'package:finding_movie/presentation/widgets/detail/header_widget.dart';
import 'package:finding_movie/presentation/widgets/detail/icon_text_widget.dart';
import 'package:finding_movie/presentation/widgets/home/badge_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

@RoutePage()
class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, this.item}) : super(key: key);

  final dynamic item;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Consumer<DetailNotifier>(
          builder: (context, data, _) {
            if (data.requestStateDetail == RequestState.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (data.requestStateDetail == RequestState.loaded) {
              return Column(
                children: [
                  HeaderWidget(
                      id: data.detail.id,
                      backdropPath: data.detail.backdropPath),
                  Padding(
                    padding: const EdgeInsets.all(26),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _title(data.detail),
                        const SizedBox(
                          height: 9,
                        ),
                        _titleDetail(data.detail),
                        const SizedBox(height: 20),
                        _divider(),
                        const SizedBox(height: 17),
                        _sectionTwo(context, data.detail),
                        const SizedBox(height: 20),
                        _divider(),
                        const SizedBox(height: 17),
                        Text(
                          S.of(context).synopsys,
                          style: myTextTheme().titleMedium,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          data.detail.overview,
                          style:
                              myTextTheme(color: MyColors.textGrey).titleSmall,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          S.of(context).relatedMovies,
                          style: myTextTheme().titleMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return Center(
                key: const Key('error_message'),
                child: Text(data.messageDetail),
              );
            }
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final detailNotifier =
          Provider.of<DetailNotifier>(context, listen: false);
      detailNotifier.fetchDetail(widget.item.id, widget.item);
    });
  }

  Widget _title(dynamic detail) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            detail is MovieDetail ? detail.title : detail.name,
            style: myTextTheme(color: MyColors.textWhite).titleLarge,
          ),
        ),
        _text4kWidget(),
      ],
    );
  }

  Widget _titleDetail(dynamic detail) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (detail is MovieDetail)
          IconTextWidget(
            icon: Icons.watch_later_outlined,
            value: detail.runtime.toString(),
            endText: S.of(context).minutes,
          ),
        IconTextWidget(
          icon: Icons.star_rounded,
          value: detail.voteAverage.toStringAsFixed(1),
          endText: S.of(context).imdbHug,
        ),
      ],
    );
  }

  Widget _divider() {
    return Divider(
      color: MyColors.horizontalLine,
      thickness: 1.0,
      height: 1.0,
    );
  }

  Widget _text4kWidget() {
    return BadgeWidget(
      height: 34,
      width: 54,
      widget: SizedBox(
        width: double.infinity,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              S.of(context).text4k,
              style: myTextTheme(color: MyColors.textGrey).titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget _sectionTwo(BuildContext context, dynamic detail) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).releaseDate,
              style: myTextTheme().titleMedium,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              DateFormat('MMMM d, y')
                  .format(detail is MovieDetail
                      ? detail.releaseDate
                      : detail.firstAirDate)
                  .toString(),
              style: myTextTheme(color: MyColors.textGrey).titleMedium,
            ),
          ],
        ),
        const SizedBox(
          width: 48,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).genre,
              style: myTextTheme().titleMedium,
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 34,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: detail.genres.length,
                itemBuilder: (context, int index) {
                  final genre = detail.genres[index];

                  if (index < 2) {
                    return Padding(
                      padding: EdgeInsets.only(
                          right: index != detail.genres.length - 1 ? 8.0 : 0),
                      child: BadgeWidget(
                        height: 34,
                        width: 90,
                        widget: SizedBox(
                          width: double.infinity,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text(
                                genre.name,
                                style: myTextTheme(color: MyColors.textGrey)
                                    .titleMedium,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
