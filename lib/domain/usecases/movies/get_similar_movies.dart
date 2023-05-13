import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/domain/entities/movies/movie_discover.dart';
import 'package:finding_movie/domain/repositories/movie_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetSimilarMovies {
  final MovieRepository movieRepository;

  GetSimilarMovies(this.movieRepository);

  Future<Either<Failure, List<MovieDiscover>>> call(int id) async {
    return await movieRepository.getSimilarMovies(id);
  }
}
