import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/domain/entities/tv_shows/tv_detail.dart';
import 'package:finding_movie/domain/entities/tv_shows/tv_discover.dart';
import 'package:finding_movie/domain/entities/tv_shows/tv_trending.dart';

abstract class TvRepository {
  Future<Either<Failure, TvDetail>> getDetailTv(int id);

  Future<Either<Failure, List<TvDiscover>>> getDiscoverTvShows();

  Future<Either<Failure, List<TvDiscover>>> getSearchTvShows(String query);

  Future<Either<Failure, List<TvDiscover>>> getSimilarTvShows(int id);

  Future<Either<Failure, List<TvTrending>>> getTrendingTvShows();
}
