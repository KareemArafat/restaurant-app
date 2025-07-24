import 'package:flutter/material.dart';
import 'package:restaurant_app/features/home/data/models/food_model.dart';
import 'package:restaurant_app/features/home/presentation/views/widgets/food_item.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        itemCount: foods.length,
        itemBuilder: (context, index) => FoodItem(foodModel: foods[index]),
      ),
    );
  }
}

final List<FoodModel> foods = [
  FoodModel(
    image: 'assets/images/food1.webp',
    name: 'Grilled Salmon with Asparagus and Mashed Potatoes',
    price: 50,
  ),
  FoodModel(
    image: 'assets/images/food2.jpg',
    name: 'Baked Gnocchi or Cheesy Meatballs Skillet',
    price: 60,
  ),
  FoodModel(
    image: 'assets/images/food3.jpeg',
    name: 'Salmon with Noodles and Spinach',
    price: 100,
  ),
  FoodModel(
    image: 'assets/images/food4.jpeg',
    name: 'Grilled Steak with Vegetables',
    price: 50,
  ),
  FoodModel(
    image: 'assets/images/food5.webp',
    name: 'Luxury Surf & Turf Platter',
    price: 20,
  ),
  FoodModel(
    image: 'assets/images/food6.jpg',
    name: 'Classic Chicken Parmesan with Seasonal Vegetables',
    price: 30,
  ),
  FoodModel(
    image: 'assets/images/food7.webp',
    name: 'Grilled Salmon with Truffle Risotto',
    price: 25,
  ),
  FoodModel(
    image: 'assets/images/food8.jpg',
    name: 'Wagyu Beef Deluxe with Gold Leaf Garnish',
    price: 80,
  ),
  FoodModel(
    image: 'assets/images/food9.webp',
    name: 'Imperial Caviar & Champagne Tasting',
    price: 90,
  ),
  FoodModel(
    image: 'assets/images/food10.jpeg',
    name: 'Herb-Crusted Rack of Lamb',
    price: 45,
  ),
];
