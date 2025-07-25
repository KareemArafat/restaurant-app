import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/features/cart/presentation/manager/my_cart_cubit/my_cart_cubit.dart';
import 'package:restaurant_app/features/home/presentation/views/widgets/food_item.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: BlocBuilder<MyCartCubit, MyCartState>(
        builder: (context, state) {
          if (state is UpdateSuccess) {
            return ListView.builder(
              itemCount: state.foodList.length,
              itemBuilder: (context, index) =>
                  FoodItem(foodModel: state.foodList[index]),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
