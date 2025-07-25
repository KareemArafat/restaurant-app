import 'package:flutter/material.dart';
import 'package:restaurant_app/features/cart/presentation/views/widgets/cart_list.dart';
import 'package:restaurant_app/features/cart/presentation/views/widgets/cost_button.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [CartList(), CostButton()]);
  }
}
