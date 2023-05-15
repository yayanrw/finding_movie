import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/core/utils/request_state.dart';
import 'package:finding_movie/domain/entities/movies/movie_detail.dart';
import 'package:finding_movie/domain/entities/movies/movie_discover.dart';
import 'package:finding_movie/domain/entities/movies/movie_trending.dart';
import 'package:finding_movie/domain/entities/tv_shows/tv_detail.dart';
import 'package:finding_movie/domain/entities/tv_shows/tv_discover.dart';
import 'package:finding_movie/domain/entities/tv_shows/tv_trending.dart';
import 'package:finding_movie/domain/usecases/movies/get_detail_movie.dart';
import 'package:finding_movie/domain/usecases/movies/get_similar_movies.dart';
import 'package:finding_movie/domain/usecases/tv_shows/get_detail_tv.dart';
import 'package:finding_movie/domain/usecases/tv_shows/get_similar_tv_shows.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class DetailNotifier extends ChangeNotifier {
  final GetDetailMovie getDetailMovie;
  final GetDetailTv getDetailTv;
  final GetSimilarMovies getSimilarMovies;
  final GetSimilarTvShows getSimilarTvShows;

  DetailNotifier(this.getDetailMovie, this.getDetailTv, this.getSimilarMovies,
      this.getSimilarTvShows);

  String _messageDetail = "";
  RequestState _requestStateDetail = RequestState.empty;
  late dynamic _detail;

  String _messageSimilar = "";
  RequestState _requestStateSimilar = RequestState.empty;
  late List<dynamic> _similar;

  String get messageDetail => _messageDetail;

  RequestState get requestStateDetail => _requestStateDetail;

  dynamic get detail => _detail;

  String get messageSimilar => _messageSimilar;

  RequestState get requestStateSimilar => _requestStateSimilar;

  List<dynamic> get similar => _similar;

  Future<void> fetchDetail(int id, dynamic type) async {
    _requestStateDetail = RequestState.loading;
    notifyListeners();

    if (type is MovieTrending || type is MovieDiscover) {
      final Either<Failure, MovieDetail> result = await getDetailMovie.call(id);

      result.fold(
        (Failure failure) {
          _requestStateDetail = RequestState.error;
          _messageDetail = failure.message;
          notifyListeners();
        },
        (MovieDetail success) {
          _requestStateDetail = RequestState.loaded;
          _detail = success;
          notifyListeners();
        },
      );
    }
    if (type is TvTrending || type is TvDiscover ) {
      final Either<Failure, TvDetail> result = await getDetailTv.call(id);

      result.fold(
        (Failure failure) {
          _requestStateDetail = RequestState.error;
          _messageDetail = failure.message;
          notifyListeners();
        },
        (TvDetail success) {
          _requestStateDetail = RequestState.loaded;
          _detail = success;
          notifyListeners();
        },
      );
    }
  }

  Future<void> fetchSimilar(int id, dynamic type) async {
    _requestStateDetail = RequestState.loading;
    notifyListeners();

    if (type is MovieTrending || type is MovieDiscover) {
      final Either<Failure, List<MovieDiscover>> result =
          await getSimilarMovies.call(id);

      result.fold(
        (Failure failure) {
          _requestStateSimilar = RequestState.error;
          _messageSimilar = failure.message;
          notifyListeners();
        },
        (List<MovieDiscover> success) {
          _requestStateSimilar = RequestState.loaded;
          _similar = success;
          notifyListeners();
        },
      );
    }
    if (type is TvTrending || type is TvDiscover) {
      final Either<Failure, List<TvDiscover>> result =
          await getSimilarTvShows.call(id);

      result.fold(
        (Failure failure) {
          _requestStateSimilar = RequestState.error;
          _messageSimilar = failure.message;
          notifyListeners();
        },
        (List<TvDiscover> success) {
          _requestStateSimilar = RequestState.loaded;
          _similar = success;
          notifyListeners();
        },
      );
    }
  }
}
