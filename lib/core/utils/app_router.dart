import 'package:go_router/go_router.dart';
import 'package:restaurant_app/features/auth/presentation/views/auth_page.dart';
import 'package:restaurant_app/features/cart/presentation/views/cart_page.dart';
import 'package:restaurant_app/features/home/presentation/views/home_page.dart';

class AppRouter {
  static String authPage = '/';
  static String homePage = '/homePage';
  static String cartPage = '/cartPage';

  static final router = GoRouter(
    routes: [
      GoRoute(path: authPage, builder: (context, state) => AuthPage()),
      GoRoute(path: homePage, builder: (context, state) => HomePage()),
      GoRoute(path: cartPage, builder: (context, state) => CartPage()),
    ],
  );
}
