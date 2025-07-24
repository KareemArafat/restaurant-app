import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_app/core/utils/app_colors.dart';
import 'package:restaurant_app/core/utils/app_router.dart';
import 'package:restaurant_app/core/utils/app_styles.dart';
import 'package:restaurant_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:restaurant_app/features/auth/presentation/views/widgets/custom_field.dart';

class AuthPageBody extends StatefulWidget {
  const AuthPageBody({super.key});

  @override
  State<AuthPageBody> createState() => _AuthPageBodyState();
}

class _AuthPageBodyState extends State<AuthPageBody> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  Image.asset(
                    'assets/images/restaurant_icon.png',
                    color: AppColors.secColor,
                    height: 180,
                  ),
                  const Text("Restaurant App", style: AppStyles.style30),
                  const SizedBox(height: 35),
                  CustomField(
                    controller: email,
                    hint: ' Email',
                    preIcon: Icons.email,
                  ),
                  const SizedBox(height: 15),
                  CustomField(
                    controller: password,
                    hint: ' Password',
                    preIcon: Icons.security,
                    obscure: true,
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: 'Login',
                    ratio: 4.1,
                    tap: () {
                      GoRouter.of(context).pushReplacement(AppRouter.homePage);
                      //   if (_formKey.currentState!.validate()) {}
                    },
                  ),
                  const Spacer(flex: 3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
