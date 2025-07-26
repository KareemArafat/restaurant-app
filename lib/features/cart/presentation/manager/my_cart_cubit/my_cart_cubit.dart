import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:restaurant_app/const.dart';
import 'package:restaurant_app/features/cart/data/repos/cart_repo.dart';
import 'package:restaurant_app/features/home/data/models/food_model.dart';
part 'my_cart_state.dart';

class MyCartCubit extends Cubit<MyCartState> {
  MyCartCubit(this._cartRepo) : super(MyCartInitial());

  final CartRepo _cartRepo;

  List<FoodModel> foodList = [];

  cartUpdate([FoodModel? foodModel]) async {
    if (foodModel != null) {
      final box = Hive.box<FoodModel>(foodBox);
      if (box.containsKey(foodModel.name)) {
        await _cartRepo.delFromCart(foodModel: foodModel);
      } else {
        await _cartRepo.addToCart(foodModel: foodModel);
      }
    }
    foodList = await _cartRepo.myCart();
    emit(UpdateSuccess(foodList: foodList));
  }
}
