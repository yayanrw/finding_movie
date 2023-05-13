import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/domain/entities/movies/movie_detail.dart';
import 'package:finding_movie/domain/repositories/movie_repository.dart';

class GetDetailMovie {
  final MovieRepository movieRepository;

  GetDetailMovie(this.movieRepository);

  Future<Either<Failure, MovieDetail>> call(int id) async {
    return await movieRepository.getDetailMovie(id);
  }
}
