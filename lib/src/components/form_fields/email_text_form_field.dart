import 'package:flutter/material.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';

Widget emailTextFormField({
  required TextEditingController? controller,
  required String label,
}) {
  return TextFormField(
    controller: controller,
    autocorrect: false,
    enableSuggestions: false,
    style: const TextStyle(fontSize: 15),
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(fontSize: 20),
      border: const OutlineInputBorder(),
      filled: true,
      fillColor: ColorPalette.whiteColor,
      suffixIcon: const Icon(
        Icons.email,
      ),
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return Strings.pleaseEnterEmail;
      } else if (!RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value)) {
        return Strings.pleaseEnterValidEmail;
      } else {
        return null;
      }
    },
  );
}
