import 'package:flutter/material.dart';

class FoodImage extends StatelessWidget {
  const FoodImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4.5 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(image, fit: BoxFit.fill),
      ),
    );
  }
}
