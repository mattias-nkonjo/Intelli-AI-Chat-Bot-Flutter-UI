import 'package:flutter/material.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';

Widget nameTextFormField(
    {required TextEditingController? controller, required String label}) {
  return TextFormField(
    controller: controller,
    autocorrect: false,
    enableSuggestions: false,
    style: const TextStyle(fontSize: 15),
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(fontSize: 20),
      border: const OutlineInputBorder(),
      filled: true,
      fillColor: ColorPalette.whiteColor,
      suffixIcon: const Icon(
        Icons.person,
      ),
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return Strings.pleaseEnterName;
      } else {
        return null;
      }
    },
  );
}
