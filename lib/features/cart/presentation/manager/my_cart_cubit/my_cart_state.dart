part of 'my_cart_cubit.dart';

sealed class MyCartState {}

final class MyCartInitial extends MyCartState {}

final class UpdateSuccess extends MyCartState {
  final List<FoodModel> foodList;
  UpdateSuccess({required this.foodList});
}
