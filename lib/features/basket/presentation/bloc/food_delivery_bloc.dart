import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:malina_app/features/basket/data/item_model.dart';
import 'package:malina_app/features/basket/data/market_model.dart';
import 'package:malina_app/features/basket/presentation/pages/food/basket_food_content.dart';
import 'package:malina_app/gen/assets.gen.dart';

part 'food_delivery_event.dart';
part 'food_delivery_state.dart';
part 'food_delivery_bloc.freezed.dart';

@injectable
class BasketBloc extends Bloc<BasketEvent, BasketState> {
  BasketBloc()
      : super(const BasketState(
          count: 0,
          totalPrice: 0,
          markets: [],
        )) {
    on<_Add>(_add);
    on<_Delete>(_delete);
    on<_GetFoodBasket>(_getFoodBasket);
    on<_GetBeautyBasket>(_getBeautyBasket);
  }

  void _getBeautyBasket(
    _GetBeautyBasket event,
    Emitter<BasketState> emit,
  ) {
    List<MarketModel> beautyMarket = [
      MarketModel(items: [
        ItemModel(
          image: Assets.images.shampoo.path,
          label: 'Hadat Cosmetics',
          description: 'Шампунь интенсивно восстанавливающий Hydro Intensive Repair Shampoo 250 мл',
          price: 1900,
        ),
        ItemModel(
          image: Assets.images.cream.path,
          label: 'Hadat Cosmetics',
          description: 'Увлажняющий кондиционер 150 мл',
          price: 2000,
        ),
      ], totalPrice: 0, label: 'Hair'),
      MarketModel(items: [
        ItemModel(
          image: Assets.images.shampoo2.path,
          label: 'L’Oreal Paris Elseve',
          description: 'Шампунь для ослабленных волос',
          price: 600,
        ),
      ], totalPrice: 0, label: 'Preen Beauty'),
    ];
    emit(
      state.copyWith(markets: beautyMarket),
    );
  }

  void _getFoodBasket(
    _GetFoodBasket event,
    Emitter<BasketState> emit,
  ) {
    List<MarketModel> foodMarket = [
      MarketModel(items: [
        ItemModel(
          image: Assets.images.pizzaMargo.path,
          label: 'Том ям',
          description: 'Пицца с соусом том ям 230 гр',
          price: 250,
        ),
      ], totalPrice: 0, label: 'Bellagio Coffee'),
    ];

    emit(
      state.copyWith(markets: foodMarket),
    );
  }

  void _add(
    _Add event,
    Emitter<BasketState> emit,
  ) {
    final newCount = state.count + 1;
    final newTotalPrice = state.totalPrice + event.price;

    emit(
      state.copyWith(
        count: newCount,
        totalPrice: newTotalPrice,
      ),
    );
  }

  void _delete(
    _Delete event,
    Emitter<BasketState> emit,
  ) {
    final newCount = (state.count > 0) ? state.count - 1 : 0;
    final newTotalPrice = (state.totalPrice > event.price) ? state.totalPrice - event.price : 0;

    emit(
      state.copyWith(
        count: newCount,
        totalPrice: newTotalPrice,
      ),
    );
  }
}
