import 'package:flutter/material.dart';
import 'package:restaurant_app/features/auth/presentation/views/widgets/auth_page_body.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AuthPageBody());
  }
}
