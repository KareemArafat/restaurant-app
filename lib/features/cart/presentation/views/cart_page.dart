import 'package:flutter/material.dart';
import 'package:restaurant_app/core/utils/app_styles.dart';
import 'package:restaurant_app/features/cart/presentation/views/widgets/cart_page_body.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart', style: AppStyles.style25),
        forceMaterialTransparency: true,
      ),
      body: CartPageBody(),
    );
  }
}
