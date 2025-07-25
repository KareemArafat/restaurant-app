import 'package:flutter/widgets.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:restaurant_app/const.dart';
import 'package:restaurant_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:restaurant_app/features/home/data/models/food_model.dart';

class CostButton extends StatelessWidget {
  const CostButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 0,
      right: 0,
      child: Center(
        child: ValueListenableBuilder(
          valueListenable: Hive.box<FoodModel>(kFoods).listenable(),
          builder: (context, value, child) {
            num total = 0;
            for (var item in value.values) {
              total += item.price;
            }
            return CustomButton(text: 'Total Cost:  \$$total', ratio: 5.1);
          },
        ),
      ),
    );
  }
}
