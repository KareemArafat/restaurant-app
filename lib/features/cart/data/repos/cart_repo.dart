import 'package:restaurant_app/features/home/data/models/food_model.dart';

abstract class CartRepo {
  Future<void> addToCart({required FoodModel foodModel});
  Future<void> delFromCart({required FoodModel foodModel});
}
