import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:restaurant_app/const.dart';
import 'package:restaurant_app/core/utils/app_colors.dart';
import 'package:restaurant_app/core/utils/app_router.dart';
import 'package:restaurant_app/features/home/data/models/food_model.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(FoodModelAdapter());
  await Hive.openBox<FoodModel>(kFoods);
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        textTheme: ThemeData.dark().textTheme.apply(
          bodyColor: Colors.white,
          fontFamily: '',
        ),
        scaffoldBackgroundColor: AppColors.priColor,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
