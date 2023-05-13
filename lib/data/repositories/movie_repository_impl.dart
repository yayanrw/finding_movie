import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/exceptions.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/data/datasources/remote/remote_datasource.dart';
import 'package:finding_movie/data/datasources/remote/responses/movies/movie_detail_response.dart';
import 'package:finding_movie/data/datasources/remote/responses/movies/movie_discover_response.dart';
import 'package:finding_movie/data/datasources/remote/responses/movies/movie_trending_response.dart';
import 'package:finding_movie/domain/entities/movies/movie_detail.dart';
import 'package:finding_movie/domain/entities/movies/movie_discover.dart';
import 'package:finding_movie/domain/entities/movies/movie_trending.dart';
import 'package:finding_movie/domain/repositories/movie_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MovieRepository)
class MovieRepositoryImpl extends MovieRepository {
  final RemoteDataSource remoteDataSource;

  MovieRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, MovieDetail>> getDetailMovie(int id) async {
    try {
      final MovieDetailResponse movieDetailResponse =
          await remoteDataSource.fetchDetailMovie(id);

      return Right(movieDetailResponse.toEntity());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Connection failed'));
    }
  }

  @override
  Future<Either<Failure, List<MovieDiscover>>> getDiscoverMovies() async {
    try {
      final MovieDiscoverResponse movieDiscoverResponse =
          await remoteDataSource.fetchDiscoverMovies();

      return Right(movieDiscoverResponse.results
          .map((movieDiscoverDto) => movieDiscoverDto.toEntity())
          .toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Connection failed'));
    }
  }

  @override
  Future<Either<Failure, List<MovieDiscover>>> getSearchMovies(
      String query) async {
    try {
      final MovieDiscoverResponse movieDiscoverResponse =
          await remoteDataSource.fetchSearchMovies(query);

      return Right(movieDiscoverResponse.results
          .map((movieDiscoverDto) => movieDiscoverDto.toEntity())
          .toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Connection failed'));
    }
  }

  @override
  Future<Either<Failure, List<MovieDiscover>>> getSimilarMovies(int id) async {
    try {
      final MovieDiscoverResponse movieDiscoverResponse =
          await remoteDataSource.fetchSimilarMovies(id);

      return Right(movieDiscoverResponse.results
          .map((movieDiscoverDto) => movieDiscoverDto.toEntity())
          .toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Connection failed'));
    }
  }

  @override
  Future<Either<Failure, List<MovieTrending>>> getTrendingMovies() async {
    try {
      final MovieTrendingResponse movieTrendingResponse =
          await remoteDataSource.fetchTrendingMovies();

      return Right(movieTrendingResponse.results
          .map((movieTrendingDto) => movieTrendingDto.toEntity())
          .toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Connection failed'));
    }
  }
}
