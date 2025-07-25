import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:restaurant_app/const.dart';
import 'package:restaurant_app/core/utils/app_styles.dart';
import 'package:restaurant_app/features/cart/presentation/manager/my_cart_cubit/my_cart_cubit.dart';
import 'package:restaurant_app/features/home/data/models/food_model.dart';
import 'package:restaurant_app/features/home/presentation/views/widgets/food_image.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key, required this.foodModel});
  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Row(
          children: [
            FoodImage(image: foodModel.image),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(foodModel.name, style: AppStyles.style20, maxLines: 2),
                  SizedBox(height: 20),
                  Text('\$ ${foodModel.price}', style: AppStyles.style15),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      onPressed: () {
                        BlocProvider.of<MyCartCubit>(
                          context,
                        ).cartUpdate(foodModel);
                      },
                      icon: BlocBuilder<MyCartCubit, MyCartState>(
                        builder: (context, state) {
                          if (state is UpdateSuccess && check(foodModel)) {
                            return Icon(
                              Icons.remove_shopping_cart_outlined,
                              color: Colors.red,
                            );
                          } else if (state is UpdateSuccess &&
                              !check(foodModel)) {
                            return Icon(Icons.add_shopping_cart_rounded);
                          } else {
                            return check(foodModel)
                                ? Icon(
                                    Icons.remove_shopping_cart_outlined,
                                    color: Colors.red,
                                  )
                                : Icon(Icons.add_shopping_cart_rounded);
                          }
                        },
                      ),
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

bool check(FoodModel foodModel) {
  final box = Hive.box<FoodModel>(kFoods);
  if (box.containsKey(foodModel.name)) {
    return true;
  } else {
    return false;
  }
}
