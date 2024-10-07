part of 'food_delivery_bloc.dart';

@freezed
class BasketEvent with _$BasketEvent {
  const factory BasketEvent.add({required int price}) = _Add;
  const factory BasketEvent.delete({required int price}) = _Delete;
  const factory BasketEvent.getFoodBasket() = _GetFoodBasket;
  const factory BasketEvent.getBeautyBasket() = _GetBeautyBasket;
}
