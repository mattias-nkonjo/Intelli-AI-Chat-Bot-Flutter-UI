import 'package:flutter/material.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';

Widget signInDivider() {
  return Row(
    children: const [
      Expanded(
        child: Divider(
          color: ColorPalette.faithColor,
          thickness: 1.5,
        ),
      ),
      Text(
        Strings.orContinueWith,
        style: TextStyle(
          color: ColorPalette.faithColor,
        ),
      ),
      Expanded(
        child: Divider(
          color: ColorPalette.faithColor,
          thickness: 1.5,
        ),
      ),
    ],
  );
}
