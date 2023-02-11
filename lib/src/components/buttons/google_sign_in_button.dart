import 'package:flutter/material.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';

Widget googleSignInButton({required VoidCallback onPressed}) {
  return Container(
    width: 100,
    height: 60,
    decoration: BoxDecoration(
      color: ColorPalette.socialMediaIconBgColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: InkWell(
      onTap: onPressed,
      child: Image.asset(
        ImagesUrl.google,
      ),
    ),
  );
}
