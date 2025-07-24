import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_app/core/utils/app_colors.dart';
import 'package:restaurant_app/core/utils/app_router.dart';
import 'package:restaurant_app/core/utils/app_styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 6, right: 6),
      height: MediaQuery.of(context).size.height * 0.1,
      color: AppColors.priColor,
      child: Row(
        children: [
          IconButton(
            onPressed: () =>
                GoRouter.of(context).pushReplacement(AppRouter.authPage),
            icon: Icon(Icons.logout_outlined, color: Colors.white, size: 30),
          ),
          SizedBox(width: 20),
          Text(
            'Restaurant App',
            style: AppStyles.style25.copyWith(color: Colors.white),
          ),
          Spacer(),
          IconButton(
            onPressed: () => GoRouter.of(context).push(AppRouter.cartPage),
            icon: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
