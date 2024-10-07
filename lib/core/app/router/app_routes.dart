import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:malina_app/core/app/router/basket_routes.dart';
import 'package:malina_app/core/app/router/basket_wrapper_screen.dart';
import 'package:malina_app/features/basket/presentation/pages/beauty/basket_beauty_screen.dart';
import 'package:malina_app/features/basket/presentation/pages/food/basket_food_screen.dart';
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
          page: BottomNavRoute.page,
          initial: true,
          children: [
            AutoRoute(page: MainRoute.page, maintainState: false),
            AutoRoute(page: MainRoute.page, maintainState: false),
            AutoRoute(page: MainRoute.page, maintainState: false),
            BasketRoutes.routes
          ],
        ),
      ];
}

class EmptyRouterPage extends AutoRouter {
  const EmptyRouterPage({super.key});
}
