import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:finding_movie/presentation/pages/explore/explore_page.dart';
import 'package:finding_movie/presentation/pages/home/home_page.dart';
import 'package:finding_movie/presentation/pages/detail/detail_page.dart';
import 'package:finding_movie/presentation/pages/wrapper/wrapper_page.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/wrapper', page: WrapperRoute.page, initial: true, children: [
          AutoRoute(
            path: 'home',
            page: HomeRoute.page,
          ),
          AutoRoute(
            path: 'explore',
            page: ExploreRoute.page,
          ),
          AutoRoute(
            path: 'detail/:item',
            page: DetailRoute.page,
          ),
        ])
      ];
}
