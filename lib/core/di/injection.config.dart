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
import '../../data/repositories/movie_repository_impl.dart' as _i9;
import '../../data/repositories/tv_repository_impl.dart' as _i7;
import '../../domain/repositories/movie_repository.dart' as _i8;
import '../../domain/repositories/tv_repository.dart' as _i6;
import '../router/router.dart' as _i3;
import 'register_module.dart' as _i10;

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
    gh.lazySingleton<_i8.MovieRepository>(() =>
        _i9.MovieRepositoryImpl(remoteDataSource: gh<_i5.RemoteDataSource>()));
    return this;
  }
}

class _$RegisterModule extends _i10.RegisterModule {}
