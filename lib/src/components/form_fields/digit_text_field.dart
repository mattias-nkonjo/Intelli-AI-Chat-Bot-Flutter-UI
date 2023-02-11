import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:p1_flutter_ai/src/constants/colors_constants.dart';

class DigitTextFormField extends StatelessWidget {
  const DigitTextFormField({
    super.key,
    required this.controller,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 64,
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.center,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: ColorPalette.blackColor,
            ),
          ),
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
