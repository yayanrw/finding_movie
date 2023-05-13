import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/domain/entities/tv_shows/tv_trending.dart';
import 'package:finding_movie/domain/repositories/tv_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetTrendingTvShows {
  final TvRepository tvRepository;

  GetTrendingTvShows(this.tvRepository);

  Future<Either<Failure, List<TvTrending>>> call() async {
    return await tvRepository.getTrendingTvShows();
  }
}
