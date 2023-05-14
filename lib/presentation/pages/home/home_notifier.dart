import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/core/utils/request_state.dart';
import 'package:finding_movie/domain/entities/movies/movie_trending.dart';
import 'package:finding_movie/domain/entities/tv_shows/tv_trending.dart';
import 'package:finding_movie/domain/usecases/movies/get_trending_movies.dart';
import 'package:finding_movie/domain/usecases/tv_shows/get_trending_tv_shows.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeNotifier extends ChangeNotifier {
  final GetTrendingMovies getTrendingMovies;
  final GetTrendingTvShows getTrendingTvShows;

  HomeNotifier(this.getTrendingMovies, this.getTrendingTvShows);

  String _messageMovies = "";
  RequestState _requestStateMovies = RequestState.empty;
  late List<MovieTrending> _trendingMovies;

  String get messageMovies => _messageMovies;

  RequestState get requestStateMovies => _requestStateMovies;

  List<MovieTrending> get trendingMovies => _trendingMovies;

  String _messageTvShows = "";
  RequestState _requestStateTvShows = RequestState.empty;
  late List<TvTrending> _trendingTvShows;

  String get messageTvShows => _messageTvShows;

  RequestState get requestStateTvShows => _requestStateTvShows;

  List<TvTrending> get trendingTvShows => _trendingTvShows;

  Future<void> fetchTrendingMovies() async {
    _requestStateMovies = RequestState.loading;
    notifyListeners();

    final Either<Failure, List<MovieTrending>> result =
        await getTrendingMovies.call();

    result.fold(
      (Failure failure) {
        _requestStateMovies = RequestState.error;
        _messageMovies = failure.message;
        notifyListeners();
      },
      (List<MovieTrending> success) {
        _requestStateMovies = RequestState.loaded;
        _trendingMovies = success;
        notifyListeners();
      },
    );
  }

  Future<void> fetchTrendingTvShows() async {
    _requestStateTvShows = RequestState.loading;
    notifyListeners();

    final Either<Failure, List<TvTrending>> result =
        await getTrendingTvShows.call();

    result.fold(
      (Failure failure) {
        _requestStateTvShows = RequestState.error;
        _messageTvShows = failure.message;
        notifyListeners();
      },
      (List<TvTrending> success) {
        _requestStateTvShows = RequestState.loaded;
        _trendingTvShows = success;
        notifyListeners();
      },
    );
  }
}
