import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/domain/entities/tv_shows/tv_discover.dart';
import 'package:finding_movie/domain/repositories/tv_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetSearchTvShows {
  final TvRepository tvRepository;

  GetSearchTvShows(this.tvRepository);

  Future<Either<Failure, List<TvDiscover>>> call(String query) async {
    return await tvRepository.getSearchTvShows(query);
  }
}
