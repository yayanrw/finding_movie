import 'package:dartz/dartz.dart';
import 'package:finding_movie/core/utils/errors/failure.dart';
import 'package:finding_movie/core/utils/request_state.dart';
import 'package:finding_movie/domain/entities/movies/movie_discover.dart';
import 'package:finding_movie/domain/usecases/movies/get_discover_movies.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@injectable
class ExploreNotifier extends ChangeNotifier {
  final GetDiscoverMovies getDiscoverMovies;

  ExploreNotifier(this.getDiscoverMovies);

  String _messageMovies = "";
  RequestState _requestStateMovies = RequestState.empty;
  late List<MovieDiscover> _discoverMovies;

  String get messageMovies => _messageMovies;

  RequestState get requestStateMovies => _requestStateMovies;

  List<MovieDiscover> get discoverMovies => _discoverMovies;

  Future<void> fetchDiscoverMovies() async {
    _requestStateMovies = RequestState.loading;
    notifyListeners();

    final Either<Failure, List<MovieDiscover>> result =
        await getDiscoverMovies.call();

    result.fold(
      (Failure failure) {
        _requestStateMovies = RequestState.error;
        _messageMovies = failure.message;
        notifyListeners();
      },
      (List<MovieDiscover> success) {
        _requestStateMovies = RequestState.loaded;
        _discoverMovies = success;
        notifyListeners();
      },
    );
  }
}
