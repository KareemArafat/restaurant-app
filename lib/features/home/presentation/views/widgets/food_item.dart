import 'package:flutter/material.dart';
import 'package:restaurant_app/core/utils/app_styles.dart';
import 'package:restaurant_app/features/home/presentation/views/widgets/food_image.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Row(
          children: [
            FoodImage(image: 'assets/images/food.jpg'),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Food Name', style: AppStyles.style20, maxLines: 2),
                  SizedBox(height: 20),
                  Text('\$ 100', style: AppStyles.style15),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_shopping_cart_rounded),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
