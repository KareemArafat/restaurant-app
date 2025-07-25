import 'package:hive/hive.dart';
import 'package:restaurant_app/const.dart';
import 'package:restaurant_app/features/home/data/models/food_model.dart';
import 'package:restaurant_app/features/cart/data/repos/cart_repo.dart';

class CartRepoImp implements CartRepo {
  @override
  Future<void> addToCart({required FoodModel foodModel}) async {
    var box = Hive.box<FoodModel>(kFoods);
    await box.put(foodModel.name, foodModel);
  }

  @override
  Future<void> delFromCart({required FoodModel foodModel}) async {
    var box = await Hive.openBox<FoodModel>(kFoods);
    await box.delete(foodModel.name);
  }

  @override
  Future<List<FoodModel>> myCart() async {
    var box = await Hive.openBox<FoodModel>(kFoods);
    List<FoodModel> foodList = box.values.toList();
    return foodList;
  }
}
