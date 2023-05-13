import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/exceptions.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/data/datasources/remote/remote_datasource.dart';
import 'package:finding_movie/data/datasources/remote/responses/tv_shows/tv_detail_response.dart';
import 'package:finding_movie/data/datasources/remote/responses/tv_shows/tv_discover_response.dart';
import 'package:finding_movie/data/datasources/remote/responses/tv_shows/tv_trending_response.dart';
import 'package:finding_movie/domain/entities/tv_shows/tv_detail.dart';
import 'package:finding_movie/domain/entities/tv_shows/tv_discover.dart';
import 'package:finding_movie/domain/entities/tv_shows/tv_trending.dart';
import 'package:finding_movie/domain/repositories/tv_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TvRepository)
class TvRepositoryImpl extends TvRepository {
  final RemoteDataSource remoteDataSource;

  TvRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, TvDetail>> getDetailTv(int id) async {
    try {
      final TvDetailResponse tvDetailResponse =
          await remoteDataSource.fetchDetailTvShow(id);

      return Right(tvDetailResponse.toEntity());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Connection failed'));
    }
  }

  @override
  Future<Either<Failure, List<TvDiscover>>> getDiscoverTvShows() async {
    try {
      final TvDiscoverResponse tvDiscoverResponse =
          await remoteDataSource.fetchDiscoverTvShows();

      return Right(tvDiscoverResponse.results
          .map((tvDiscoverDto) => tvDiscoverDto.toEntity())
          .toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Connection failed'));
    }
  }

  @override
  Future<Either<Failure, List<TvDiscover>>> getSearchTvShows(
      String query) async {
    try {
      final TvDiscoverResponse tvDiscoverResponse =
          await remoteDataSource.fetchSearchTvShows(query);

      return Right(tvDiscoverResponse.results
          .map((tvDiscoverDto) => tvDiscoverDto.toEntity())
          .toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Connection failed'));
    }
  }

  @override
  Future<Either<Failure, List<TvDiscover>>> getSimilarTvShows(int id) async {
    try {
      final TvDiscoverResponse tvDiscoverResponse =
          await remoteDataSource.fetchSimilarTvShows(id);

      return Right(tvDiscoverResponse.results
          .map((tvDiscoverDto) => tvDiscoverDto.toEntity())
          .toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Connection failed'));
    }
  }

  @override
  Future<Either<Failure, List<TvTrending>>> getTrendingTvShows() async {
    try {
      final TvTrendingResponse tvTrendingResponse =
          await remoteDataSource.fetchTrendingTvShows();

      return Right(tvTrendingResponse.results
          .map((tvTrendingDto) => tvTrendingDto.toEntity())
          .toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Connection failed'));
    }
  }
}
