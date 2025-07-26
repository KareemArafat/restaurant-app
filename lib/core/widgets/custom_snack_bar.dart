import 'package:flutter/material.dart';
import 'package:restaurant_app/core/utils/app_colors.dart';

void customSnackBar(BuildContext context, String errMess) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColors.secColor,
      duration: Duration(seconds: 3),
      content: Text(
        errMess,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
