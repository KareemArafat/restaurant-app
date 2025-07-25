import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:restaurant_app/const.dart';
import 'package:restaurant_app/core/utils/app_colors.dart';
import 'package:restaurant_app/core/utils/app_router.dart';
import 'package:restaurant_app/core/utils/cubit_observer.dart';
import 'package:restaurant_app/features/cart/data/repos/cart_repo_imp.dart';
import 'package:restaurant_app/features/cart/presentation/manager/my_cart_cubit/my_cart_cubit.dart';
import 'package:restaurant_app/features/home/data/models/food_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Bloc.observer = CubitObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(FoodModelAdapter());
  await Hive.openBox<FoodModel>(kFoods);
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyCartCubit(CartRepoImp()),
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          textTheme: ThemeData.dark().textTheme.apply(
            bodyColor: Colors.white,
            fontFamily: '',
          ),
          scaffoldBackgroundColor: AppColors.priColor,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
