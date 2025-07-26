import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_app/core/utils/app_router.dart';
import 'package:restaurant_app/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:restaurant_app/features/auth/presentation/views/widgets/auth_page_body.dart';
import 'package:restaurant_app/features/auth/presentation/views/widgets/custom_snack_bar.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            GoRouter.of(context).pushReplacement(AppRouter.homePage);
          }
          if (state is LoginFailure) {
            customSnackBar(context, state.errMess);
          }
        },
        builder: (context, state) {
          if (state is LoginLoading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return AuthPageBody();
          }
        },
      ),
    );
  }
}
