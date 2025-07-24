import 'package:flutter/material.dart';
import 'package:restaurant_app/core/utils/app_colors.dart';
import 'package:restaurant_app/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.ratio,
    this.tap,
  });

  final String text;
  final double ratio;
  final VoidCallback? tap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: AspectRatio(
        aspectRatio: ratio,
        child: ElevatedButton(
          onPressed: tap,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Text(text, style: AppStyles.style20),
        ),
      ),
    );
  }
}
