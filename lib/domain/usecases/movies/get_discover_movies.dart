import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/domain/entities/movies/movie_discover.dart';
import 'package:finding_movie/domain/repositories/movie_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetDiscoverMovies {
  final MovieRepository movieRepository;

  GetDiscoverMovies(this.movieRepository);

  Future<Either<Failure, List<MovieDiscover>>> call() async {
    return await movieRepository.getDiscoverMovies();
  }
}
