import 'package:flutter/material.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';

Widget appleSignInButton({required VoidCallback onPressed}) {
  return Container(
    width: 100,
    height: 60,
    decoration: BoxDecoration(
      color: ColorPalette.whiteColor,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: IconButton(
      onPressed: onPressed,
      icon: const Icon(
        Icons.apple,
        size: 50,
      ),
    ),
  );
}
