import 'dart:convert';

import 'package:finding_movie/core/config/constants.dart';
import 'package:finding_movie/core/utils/errors/exceptions.dart';
import 'package:finding_movie/core/utils/helper.dart';
import 'package:finding_movie/data/datasources/remote/responses/movies/movie_detail_response.dart';
import 'package:finding_movie/data/datasources/remote/responses/movies/movie_discover_response.dart';
import 'package:finding_movie/data/datasources/remote/responses/movies/movie_trending_response.dart';
import 'package:finding_movie/data/datasources/remote/responses/tv_shows/tv_detail_response.dart';
import 'package:finding_movie/data/datasources/remote/responses/tv_shows/tv_discover_response.dart';
import 'package:finding_movie/data/datasources/remote/responses/tv_shows/tv_trending_response.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: RemoteDataSource)
class RemoteDataSourceImpl implements RemoteDataSource {
  RemoteDataSourceImpl(this.client);

  final http.Client client;

  @override
  Future<MovieDetailResponse> fetchDetailMovie(int id) async {
    final response = await client.get(Uri.parse('$baseUrl/movie/$id'),
        headers: myHeaders(bearerToken));

    if (response.statusCode == 200) {
      final MovieDetailResponse movieDetailResponse =
          MovieDetailResponse.fromJson(jsonDecode(response.body));
      return movieDetailResponse;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<TvDetailResponse> fetchDetailTvShow(int id) async {
    final response = await client.get(Uri.parse('$baseUrl/tv/$id'),
        headers: myHeaders(bearerToken));

    if (response.statusCode == 200) {
      final TvDetailResponse tvDetailResponse =
          TvDetailResponse.fromJson(jsonDecode(response.body));
      return tvDetailResponse;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<MovieDiscoverResponse> fetchDiscoverMovies() async {
    final response = await client.get(Uri.parse('$baseUrl/discover/movie'),
        headers: myHeaders(bearerToken));

    if (response.statusCode == 200) {
      final MovieDiscoverResponse movieDiscoverResponse =
          MovieDiscoverResponse.fromJson(jsonDecode(response.body));

      return movieDiscoverResponse;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<TvDiscoverResponse> fetchDiscoverTvShows() async {
    final response = await client.get(Uri.parse('$baseUrl/discover/tv'),
        headers: myHeaders(bearerToken));

    if (response.statusCode == 200) {
      final TvDiscoverResponse tvDiscoverResponse =
          TvDiscoverResponse.fromJson(jsonDecode(response.body));

      return tvDiscoverResponse;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<MovieDiscoverResponse> fetchSearchMovies(String query) async {
    final response = await client.get(
        Uri.parse('$baseUrl/search/movie')
            .replace(queryParameters: {'query': query}),
        headers: myHeaders(bearerToken));

    if (response.statusCode == 200) {
      final MovieDiscoverResponse movieDiscoverResponse =
          MovieDiscoverResponse.fromJson(jsonDecode(response.body));
      return movieDiscoverResponse;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<TvDiscoverResponse> fetchSearchTvShows(String query) async {
    final response = await client.get(
        Uri.parse('$baseUrl/search/tv')
            .replace(queryParameters: {'query': query}),
        headers: myHeaders(bearerToken));

    if (response.statusCode == 200) {
      final TvDiscoverResponse tvDiscoverResponse =
          TvDiscoverResponse.fromJson(jsonDecode(response.body));
      return tvDiscoverResponse;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<MovieDiscoverResponse> fetchSimilarMovies(int id) async {
    final response = await client.get(Uri.parse('$baseUrl/movie/$id/similar'),
        headers: myHeaders(bearerToken));

    if (response.statusCode == 200) {
      final MovieDiscoverResponse movieDiscoverResponse =
          MovieDiscoverResponse.fromJson(jsonDecode(response.body));

      return movieDiscoverResponse;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<TvDiscoverResponse> fetchSimilarTvShows(int id) async {
    final response = await client.get(Uri.parse('$baseUrl/tv/$id/similar'),
        headers: myHeaders(bearerToken));

    if (response.statusCode == 200) {
      final TvDiscoverResponse tvDiscoverResponse =
          TvDiscoverResponse.fromJson(jsonDecode(response.body));

      return tvDiscoverResponse;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<MovieTrendingResponse> fetchTrendingMovies() async {
    final response = await client.get(Uri.parse('$baseUrl/trending/movie/week'),
        headers: myHeaders(bearerToken));

    if (response.statusCode == 200) {
      final MovieTrendingResponse movieTrendingResponse =
          MovieTrendingResponse.fromJson(jsonDecode(response.body));
      return movieTrendingResponse;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<TvTrendingResponse> fetchTrendingTvShows() async {
    final response = await client.get(Uri.parse('$baseUrl/trending/tv/week'),
        headers: myHeaders(bearerToken));

    if (response.statusCode == 200) {
      final TvTrendingResponse tvTrendingResponse =
          TvTrendingResponse.fromJson(jsonDecode(response.body));
      return tvTrendingResponse;
    } else {
      throw ServerException();
    }
  }
}

abstract class RemoteDataSource {
  Future<MovieTrendingResponse> fetchTrendingMovies();

  Future<MovieDiscoverResponse> fetchDiscoverMovies();

  Future<MovieDetailResponse> fetchDetailMovie(int id);

  Future<MovieDiscoverResponse> fetchSimilarMovies(int id);

  Future<MovieDiscoverResponse> fetchSearchMovies(String query);

  Future<TvTrendingResponse> fetchTrendingTvShows();

  Future<TvDiscoverResponse> fetchDiscoverTvShows();

  Future<TvDetailResponse> fetchDetailTvShow(int id);

  Future<TvDiscoverResponse> fetchSimilarTvShows(int id);

  Future<TvDiscoverResponse> fetchSearchTvShows(String query);
}
