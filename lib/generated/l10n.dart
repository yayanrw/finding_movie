// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Stream `
  String get stream {
    return Intl.message(
      'Stream ',
      name: 'stream',
      desc: '',
      args: [],
    );
  }

  /// `Everywhere`
  String get everywhere {
    return Intl.message(
      'Everywhere',
      name: 'everywhere',
      desc: '',
      args: [],
    );
  }

  /// `Trending Movies`
  String get trendingMovies {
    return Intl.message(
      'Trending Movies',
      name: 'trendingMovies',
      desc: '',
      args: [],
    );
  }

  /// `Lets watch movies`
  String get letsWatchMovies {
    return Intl.message(
      'Lets watch movies',
      name: 'letsWatchMovies',
      desc: '',
      args: [],
    );
  }

  /// `Finding Movie`
  String get findingMovie {
    return Intl.message(
      'Finding Movie',
      name: 'findingMovie',
      desc: '',
      args: [],
    );
  }

  /// `IMDb`
  String get imdb {
    return Intl.message(
      'IMDb',
      name: 'imdb',
      desc: '',
      args: [],
    );
  }

  /// `Trending Tv Shows`
  String get trendingTvShows {
    return Intl.message(
      'Trending Tv Shows',
      name: 'trendingTvShows',
      desc: '',
      args: [],
    );
  }

  /// `4K`
  String get text4k {
    return Intl.message(
      '4K',
      name: 'text4k',
      desc: '',
      args: [],
    );
  }

  /// `(IMDb)`
  String get imdbHug {
    return Intl.message(
      '(IMDb)',
      name: 'imdbHug',
      desc: '',
      args: [],
    );
  }

  /// `Release date`
  String get releaseDate {
    return Intl.message(
      'Release date',
      name: 'releaseDate',
      desc: '',
      args: [],
    );
  }

  /// `Genre`
  String get genre {
    return Intl.message(
      'Genre',
      name: 'genre',
      desc: '',
      args: [],
    );
  }

  /// `Synopsys`
  String get synopsys {
    return Intl.message(
      'Synopsys',
      name: 'synopsys',
      desc: '',
      args: [],
    );
  }

  /// `Related Movies`
  String get relatedMovies {
    return Intl.message(
      'Related Movies',
      name: 'relatedMovies',
      desc: '',
      args: [],
    );
  }

  /// `minutes`
  String get minutes {
    return Intl.message(
      'minutes',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'id'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
