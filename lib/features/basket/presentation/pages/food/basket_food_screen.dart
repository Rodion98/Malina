import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_app/features/basket/presentation/pages/food/basket_food_content.dart';
import 'package:malina_app/features/basket/presentation/bloc/food_delivery_bloc.dart';
import 'package:malina_app/injection/injection.dart';

@RoutePage()
class BasketFoodScreen extends StatelessWidget {
  const BasketFoodScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<BasketBloc>(),
      child: const BasketFoodContent(),
    );
  }
}
