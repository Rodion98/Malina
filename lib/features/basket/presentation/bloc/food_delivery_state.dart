part of 'food_delivery_bloc.dart';

@freezed
class BasketState with _$BasketState {
  const factory BasketState({
    required int totalPrice,
    required int count,
    required List<MarketModel> markets,
  }) = _BasketState;
}
