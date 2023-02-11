import 'package:flutter/material.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';

Widget facebookSignIButton({required VoidCallback onPressed}) {
  return Container(
    width: 100,
    height: 60,
    decoration: BoxDecoration(
      color: ColorPalette.socialMediaIconBgColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: IconButton(
      onPressed: onPressed,
      icon: const Icon(
        Icons.facebook,
        color: ColorPalette.fbColor,
        size: 40,
      ),
    ),
  );
}
