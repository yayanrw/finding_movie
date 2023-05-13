import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/domain/entities/movies/movie_detail.dart';
import 'package:finding_movie/domain/entities/movies/movie_discover.dart';
import 'package:finding_movie/domain/entities/movies/movie_trending.dart';

abstract class MovieRepository {
  Future<Either<Failure, MovieDetail>> getDetailMovie(int id);

  Future<Either<Failure, List<MovieDiscover>>> getDiscoverMovies();

  Future<Either<Failure, List<MovieDiscover>>> getSearchMovies(String query);

  Future<Either<Failure, List<MovieDiscover>>> getSimilarMovies(int id);

  Future<Either<Failure, List<MovieTrending>>> getTrendingMovies();
}
