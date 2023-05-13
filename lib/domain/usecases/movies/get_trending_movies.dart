import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/domain/entities/movies/movie_trending.dart';
import 'package:finding_movie/domain/repositories/movie_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetTrendingMovies {
  final MovieRepository movieRepository;

  GetTrendingMovies(this.movieRepository);

  Future<Either<Failure, List<MovieTrending>>> call() async {
    return await movieRepository.getTrendingMovies();
  }
}
