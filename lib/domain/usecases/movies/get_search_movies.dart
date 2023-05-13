import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/domain/entities/movies/movie_discover.dart';
import 'package:finding_movie/domain/repositories/movie_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetSearchMovies {
  final MovieRepository movieRepository;

  GetSearchMovies(this.movieRepository);

  Future<Either<Failure, List<MovieDiscover>>> call(String query) async {
    return await movieRepository.getSearchMovies(query);
  }
}