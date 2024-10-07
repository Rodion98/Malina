import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_app/features/basket/presentation/pages/beauty/basket_beauty_content.dart';
import 'package:malina_app/features/basket/presentation/bloc/food_delivery_bloc.dart';
import 'package:malina_app/injection/injection.dart';

@RoutePage()
class BasketBeautyScreen extends StatelessWidget {
  const BasketBeautyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<BasketBloc>(),
      child: const BasketBeautyContent(),
    );
  }
}
