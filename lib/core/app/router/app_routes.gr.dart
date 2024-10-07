// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BasketBeautyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BasketBeautyScreen(),
      );
    },
    BasketFoodRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BasketFoodScreen(),
      );
    },
    BasketWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const BasketWrapperScreen()),
      );
    },
    BottomNavRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    QRViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const QRViewScreen(),
      );
    },
  };
}

/// generated route for
/// [BasketBeautyScreen]
class BasketBeautyRoute extends PageRouteInfo<void> {
  const BasketBeautyRoute({List<PageRouteInfo>? children})
      : super(
          BasketBeautyRoute.name,
          initialChildren: children,
        );

  static const String name = 'BasketBeautyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BasketFoodScreen]
class BasketFoodRoute extends PageRouteInfo<void> {
  const BasketFoodRoute({List<PageRouteInfo>? children})
      : super(
          BasketFoodRoute.name,
          initialChildren: children,
        );

  static const String name = 'BasketFoodRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BasketWrapperScreen]
class BasketWrapperRoute extends PageRouteInfo<void> {
  const BasketWrapperRoute({List<PageRouteInfo>? children})
      : super(
          BasketWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'BasketWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BottomNavScreen]
class BottomNavRoute extends PageRouteInfo<void> {
  const BottomNavRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QRViewScreen]
class QRViewRoute extends PageRouteInfo<void> {
  const QRViewRoute({List<PageRouteInfo>? children})
      : super(
          QRViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'QRViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
