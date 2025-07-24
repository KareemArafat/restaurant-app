import 'package:flutter/material.dart';

void customSnackBar(BuildContext context, String errMess) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(seconds: 2),
      content: Text(
        errMess,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
   
    ),
  );
}
