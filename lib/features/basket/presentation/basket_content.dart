import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_app/core/app/io_ui.dart';
import 'package:malina_app/features/basket/presentation/bloc/food_delivery_bloc.dart';
import 'package:malina_app/features/basket/presentation/widgets/circle_button_widget.dart';
import 'package:malina_app/features/basket/presentation/widgets/market_card_widget.dart';
import 'package:malina_app/gen/strings.g.dart';

enum FoodType { delivery, inRestaurant }

enum BasketType { food, beauty }

class BasketContent extends StatefulWidget {
  final BasketType type;
  const BasketContent({required this.type});

  @override
  State<BasketContent> createState() => _BasketContentState();
}

class _BasketContentState extends State<BasketContent> {
  FoodType selectedType = FoodType.delivery;

  @override
  void initState() {
    context.read<BasketBloc>().add(
          BasketEvent.getBasket(
            baskettype: widget.type,
          ),
        );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyLight,
      appBar: _buildAppBar(),
      body: BlocBuilder<BasketBloc, BasketState>(
        builder: (context, state) {
          return widget.type == BasketType.food ? _buildFoodBasket() : _buildBeautyBasket();
        },
      ),
    );
  }

  Padding _buildBeautyBasket() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: MarketCardWidget(),
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
          selectedType == FoodType.delivery ? const MarketCardWidget() : _buildMenuButton(),
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
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColors.pink),
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

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.greyLight,
      title: Text(
        t.basket,
        style: AppTextStyle.text20,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {},
            child: const Text(
              'Очистить',
              style: AppTextStyle.text14grey,
            ),
          ),
        ),
      ],
    );
  }
}
