import 'package:malina_app/features/basket/data/item_model.dart';

class MarketModel {
  final List<ItemModel> items;
  final int totalPrice;
  final String label;

  MarketModel({
    required this.items,
    required this.totalPrice,
    required this.label,
  });
}
