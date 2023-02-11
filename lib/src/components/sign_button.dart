import 'package:flutter/material.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';

Widget signButton({
  required VoidCallback onPress,
  required String text,
  Color backGroundColor = ColorPalette.blackColor,
  Color textColor = ColorPalette.whiteColor,
}) {
  return ElevatedButton(
    onPressed: onPress,
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      padding: const EdgeInsets.all(14.5),
      minimumSize: const Size(150, 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(
          color: ColorPalette.blackColor,
          width: 2,
        ),
      ),
      textStyle: const TextStyle(
        fontSize: 20,
        color: ColorPalette.whiteColor,
      ),
      backgroundColor: backGroundColor,
    ),
    child: Text(
      text,
      style: TextStyle(
        color: textColor,
      ),
    ),
  );
}
