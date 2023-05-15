import 'package:finding_movie/core/config/constants.dart';
import 'package:finding_movie/core/router/router.dart';
import 'package:finding_movie/core/theme/my_themes.dart';
import 'package:finding_movie/generated/l10n.dart';
import 'package:finding_movie/presentation/pages/detail/detail_notifier.dart';
import 'package:finding_movie/presentation/pages/home/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:finding_movie/core/di/injection.dart' as di;
import 'dart:ui' as ui;
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  di.configureDependencies();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceLocale = ui.window.locale;

    S.load(deviceLocale);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => di.getIt<HomeNotifier>()),
        ChangeNotifierProvider(create: (_) => di.getIt<DetailNotifier>()),
      ],
      child: MaterialApp.router(
        useInheritedMediaQuery: true,
        title: appTitle,
        debugShowCheckedModeBanner: false,
        theme: myThemes(),
        routerConfig: _appRouter.config(),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
