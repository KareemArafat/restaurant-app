import 'package:hive/hive.dart';
part 'food_model.g.dart';

@HiveType(typeId: 0)
class FoodModel {
  @HiveField(0)
  final String image;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final num price;

  FoodModel({required this.image, required this.name, required this.price});
}
