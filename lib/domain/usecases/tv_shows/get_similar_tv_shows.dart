import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/domain/entities/tv_shows/tv_discover.dart';
import 'package:finding_movie/domain/repositories/tv_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetSimilarTvShows {
  final TvRepository tvRepository;

  GetSimilarTvShows(this.tvRepository);

  Future<Either<Failure, List<TvDiscover>>> call(int id) async {
    return await tvRepository.getSimilarTvShows(id);
  }
}
