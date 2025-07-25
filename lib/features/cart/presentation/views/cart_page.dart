import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/core/utils/app_styles.dart';
import 'package:restaurant_app/features/cart/presentation/manager/my_cart_cubit/my_cart_cubit.dart';
import 'package:restaurant_app/features/cart/presentation/views/widgets/cart_page_body.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    BlocProvider.of<MyCartCubit>(context).cartUpdate();
    super.initState();
  }

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
