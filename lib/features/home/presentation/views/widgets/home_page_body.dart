import 'package:flutter/material.dart';
import 'package:restaurant_app/features/home/presentation/views/widgets/food_list.dart';
import 'package:restaurant_app/features/home/presentation/views/widgets/home_app_bar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeAppBar(),
        Expanded(child: FoodList()),
      ],
    );
  }
}
