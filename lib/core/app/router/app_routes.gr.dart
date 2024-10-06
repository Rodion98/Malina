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
    BasketRoute.name: (routeData) {
      final args = routeData.argsAs<BasketRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BasketScreen(
          key: args.key,
          type: args.type,
        ),
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
/// [BasketScreen]
class BasketRoute extends PageRouteInfo<BasketRouteArgs> {
  BasketRoute({
    Key? key,
    required BasketType type,
    List<PageRouteInfo>? children,
  }) : super(
          BasketRoute.name,
          args: BasketRouteArgs(
            key: key,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'BasketRoute';

  static const PageInfo<BasketRouteArgs> page = PageInfo<BasketRouteArgs>(name);
}

class BasketRouteArgs {
  const BasketRouteArgs({
    this.key,
    required this.type,
  });

  final Key? key;

  final BasketType type;

  @override
  String toString() {
    return 'BasketRouteArgs{key: $key, type: $type}';
  }
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
