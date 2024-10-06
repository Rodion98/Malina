import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:malina_app/core/app/router/routes_path_consts.dart';
import 'package:malina_app/features/basket/presentation/basket_content.dart';
import 'package:malina_app/features/basket/presentation/basket_screen.dart';
import 'package:malina_app/features/bottom_nav/bottom_nav_screen.dart';
import 'package:malina_app/features/main/presentation/main_screen.dart';
import 'package:malina_app/features/qr_reader/presentation/qr_screen.dart';

part 'app_routes.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: QRViewRoute.page,
        ),
        AutoRoute(
          initial: true,
          path: RoutesPaths.main,
          page: BottomNavRoute.page,
          children: [
            AutoRoute(page: MainRoute.page, maintainState: false),
            AutoRoute(page: MainRoute.page, maintainState: false),
            AutoRoute(page: MainRoute.page, maintainState: false),
            AutoRoute(page: BasketRoute.page, maintainState: false),
          ],
        ),
      ];
}
