import 'package:flutter/material.dart';
import 'package:restaurant_app/features/home/presentation/views/widgets/food_item.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        itemCount: 10,
        itemBuilder: (context, index) => FoodItem(),
      ),
    );
  }
}
