import 'package:flutter/material.dart';
import 'package:restaurant_app/core/utils/app_colors.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    this.hint,
    this.obscure = false,
    this.preIcon,
    this.change,
    this.controller,
  });

  final bool obscure;
  final String? hint;
  final IconData? preIcon;
  final Function(String)? change;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder borderStyle(Color color) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(color: color, width: 2),
    );

    return TextFormField(
      controller: controller,
      onChanged: change,
      obscureText: obscure,
      obscuringCharacter: '*',
      cursorColor: Colors.black,
      style: const TextStyle(color: Colors.black),

      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required';
        }
        return null;
      },

      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(preIcon, color: AppColors.secColor),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        errorStyle: const TextStyle(color: Colors.redAccent, fontSize: 13),
        enabledBorder: borderStyle(Colors.grey),
        focusedBorder: borderStyle(Colors.grey),
        errorBorder: borderStyle(Colors.red),
        focusedErrorBorder: borderStyle(Colors.red),
      ),
    );
  }
}
