import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_app/core/app/io_ui.dart';
import 'package:malina_app/core/app/widgets/app_bar.dart';
import 'package:malina_app/features/basket/presentation/bloc/food_delivery_bloc.dart';
import 'package:malina_app/features/basket/presentation/widgets/market_card_widget.dart';

class BasketBeautyContent extends StatefulWidget {
  const BasketBeautyContent({super.key});

  @override
  State<BasketBeautyContent> createState() => _BasketBeautyContentState();
}

class _BasketBeautyContentState extends State<BasketBeautyContent> {
  @override
  void initState() {
    context.read<BasketBloc>().add(
          const BasketEvent.getBeautyBasket(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyLight,
      appBar: const AppBarWidget(),
      body: BlocBuilder<BasketBloc, BasketState>(
        builder: (context, state) {
          return const MarketCardWidget(foodType: false);
        },
      ),
    );
  }
}
