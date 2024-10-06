import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:malina_app/core/app/io_ui.dart';
import 'package:malina_app/features/basket/presentation/bloc/food_delivery_bloc.dart';
import 'package:malina_app/features/basket/presentation/widgets/item_card_widget.dart';
import 'package:malina_app/gen/assets.gen.dart';

class MarketCardWidget extends StatefulWidget {
  const MarketCardWidget({
    super.key,
  });

  @override
  State<MarketCardWidget> createState() => _MarketCardWidgetState();
}

class _MarketCardWidgetState extends State<MarketCardWidget> {
  BasketBloc get _bloc => context.read<BasketBloc>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BasketBloc, BasketState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: List.generate(state.markets.length, (index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.markets[index].label,
                      style: AppTextStyle.text16.copyWith(
                        color: AppColors.text16grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Divider(
                      color: Color(0xFFEDEBEB),
                      thickness: 1,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.markets[index].items.length,
                      itemBuilder: (context, ind) {
                        var item = state.markets[index].items[ind];
                        return ItemCardWidget(
                          type: state.basketType,
                          count: state.count,
                          totalPrice: state.totalPrice,
                          label: item.label,
                          description: item.description,
                          price: item.price,
                          image: item.image,
                          onTapAdd: () {
                            _bloc.add(
                              const BasketEvent.add(
                                price: 250,
                              ),
                            );
                          },
                          onTapDelete: () {
                            _bloc.add(
                              const BasketEvent.delete(
                                price: 250,
                              ),
                            );
                          },
                        );
                      },
                    ),
                    Container(
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Заказать',
                            style: AppTextStyle.text16.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                state.totalPrice.toString(),
                                style: AppTextStyle.text16.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 14,
                                child: SvgPicture.asset(
                                  Assets.icons.somSign,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
