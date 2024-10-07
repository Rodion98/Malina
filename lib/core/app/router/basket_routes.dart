import 'package:auto_route/auto_route.dart';
import 'package:malina_app/core/app/router/app_routes.dart';

abstract class BasketRoutes {
  static final routes = AutoRoute(
    page: BasketWrapperRoute.page,
    children: [
      AutoRoute(
        page: BasketFoodRoute.page,
        initial: true,
      ),
      AutoRoute(
        page: BasketBeautyRoute.page,
      ),
    ],
  );
}
