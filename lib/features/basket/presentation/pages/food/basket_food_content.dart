import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_app/core/app/io_ui.dart';
import 'package:malina_app/core/app/widgets/app_bar.dart';
import 'package:malina_app/features/basket/presentation/bloc/food_delivery_bloc.dart';
import 'package:malina_app/features/basket/presentation/widgets/circle_button_widget.dart';
import 'package:malina_app/features/basket/presentation/widgets/market_card_widget.dart';

enum FoodType { delivery, inRestaurant }

class BasketFoodContent extends StatefulWidget {
  const BasketFoodContent({super.key});

  @override
  State<BasketFoodContent> createState() => _BasketFoodContentState();
}

class _BasketFoodContentState extends State<BasketFoodContent> {
  FoodType selectedType = FoodType.delivery;

  @override
  void initState() {
    context.read<BasketBloc>().add(
          const BasketEvent.getFoodBasket(),
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
          return _buildFoodBasket();
        },
      ),
    );
  }

  Padding _buildFoodBasket() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleButtonWidget(
                text: 'Доставка',
                isSelected: selectedType == FoodType.delivery,
                onTap: () {
                  setState(() {
                    selectedType = FoodType.delivery;
                  });
                },
              ),
              CircleButtonWidget(
                text: 'В заведении',
                isSelected: selectedType == FoodType.inRestaurant,
                onTap: () {
                  setState(() {
                    selectedType = FoodType.inRestaurant;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          selectedType == FoodType.delivery ? const MarketCardWidget(foodType: true) : _buildMenuButton(),
        ],
      ),
    );
  }

  Expanded _buildMenuButton() {
    return Expanded(
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.pink,
          ),
          child: Center(
            child: Text(
              'Меню',
              style: AppTextStyle.text16.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
