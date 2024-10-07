import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:malina_app/core/app/router/app_routes.dart';

@RoutePage()
class BasketWrapperScreen extends StatelessWidget implements AutoRouteWrapper {
  const BasketWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EmptyRouterPage();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}
