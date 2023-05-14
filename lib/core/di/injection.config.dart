// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasources/remote/remote_datasource.dart' as _i5;
import '../../data/repositories/movie_repository_impl.dart' as _i14;
import '../../data/repositories/tv_repository_impl.dart' as _i7;
import '../../domain/repositories/movie_repository.dart' as _i13;
import '../../domain/repositories/tv_repository.dart' as _i6;
import '../../domain/usecases/movies/get_detail_movie.dart' as _i15;
import '../../domain/usecases/movies/get_discover_movies.dart' as _i16;
import '../../domain/usecases/movies/get_search_movies.dart' as _i17;
import '../../domain/usecases/movies/get_similar_movies.dart' as _i18;
import '../../domain/usecases/movies/get_trending_movies.dart' as _i19;
import '../../domain/usecases/tv_shows/get_detail_tv.dart' as _i8;
import '../../domain/usecases/tv_shows/get_discover_tv_shows.dart' as _i9;
import '../../domain/usecases/tv_shows/get_search_tv_shows.dart' as _i10;
import '../../domain/usecases/tv_shows/get_similar_tv_shows.dart' as _i11;
import '../../domain/usecases/tv_shows/get_trending_tv_shows.dart' as _i12;
import '../../presentation/pages/home/home_notifier.dart' as _i20;
import '../router/router.dart' as _i3;
import 'register_module.dart' as _i21;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppRouter>(registerModule.appRouter);
    gh.lazySingleton<_i4.Client>(() => registerModule.httpClient);
    gh.lazySingleton<_i5.RemoteDataSource>(
        () => _i5.RemoteDataSourceImpl(gh<_i4.Client>()));
    gh.lazySingleton<_i6.TvRepository>(
        () => _i7.TvRepositoryImpl(gh<_i5.RemoteDataSource>()));
    gh.lazySingleton<_i8.GetDetailTv>(
        () => _i8.GetDetailTv(gh<_i6.TvRepository>()));
    gh.lazySingleton<_i9.GetDiscoverTvShows>(
        () => _i9.GetDiscoverTvShows(gh<_i6.TvRepository>()));
    gh.lazySingleton<_i10.GetSearchTvShows>(
        () => _i10.GetSearchTvShows(gh<_i6.TvRepository>()));
    gh.lazySingleton<_i11.GetSimilarTvShows>(
        () => _i11.GetSimilarTvShows(gh<_i6.TvRepository>()));
    gh.lazySingleton<_i12.GetTrendingTvShows>(
        () => _i12.GetTrendingTvShows(gh<_i6.TvRepository>()));
    gh.lazySingleton<_i13.MovieRepository>(() =>
        _i14.MovieRepositoryImpl(remoteDataSource: gh<_i5.RemoteDataSource>()));
    gh.lazySingleton<_i15.GetDetailMovie>(
        () => _i15.GetDetailMovie(gh<_i13.MovieRepository>()));
    gh.lazySingleton<_i16.GetDiscoverMovies>(
        () => _i16.GetDiscoverMovies(gh<_i13.MovieRepository>()));
    gh.lazySingleton<_i17.GetSearchMovies>(
        () => _i17.GetSearchMovies(gh<_i13.MovieRepository>()));
    gh.lazySingleton<_i18.GetSimilarMovies>(
        () => _i18.GetSimilarMovies(gh<_i13.MovieRepository>()));
    gh.lazySingleton<_i19.GetTrendingMovies>(
        () => _i19.GetTrendingMovies(gh<_i13.MovieRepository>()));
    gh.factory<_i20.HomeNotifier>(() => _i20.HomeNotifier(
          gh<_i19.GetTrendingMovies>(),
          gh<_i12.GetTrendingTvShows>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i21.RegisterModule {}
