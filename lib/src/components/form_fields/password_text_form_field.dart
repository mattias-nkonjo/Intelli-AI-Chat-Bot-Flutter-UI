import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';
import 'package:p1_flutter_ai/src/providers/provider.dart';

class PasswordTextField extends ConsumerWidget {
  const PasswordTextField({
    super.key,
    required this.controller,
    required this.label,
  });

  final TextEditingController? controller;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isObscure = ref.watch(isObscureProvider);
    return TextFormField(
        controller: controller,
        style: const TextStyle(fontSize: 15),
        autocorrect: false,
        enableSuggestions: false,
        obscureText: isObscure,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(fontSize: 20),
          border: const OutlineInputBorder(),
          filled: true,
          fillColor: ColorPalette.whiteColor,
          suffixIcon: IconButton(
            icon: Icon(
              isObscure ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              ref
                  .read(isObscureProvider.notifier)
                  .update((state) => !isObscure);
            },
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.pleaseEnterPassword;
          } else if (value.length < 8) {
            return Strings.passwordShouldAtLeastEight;
          } else if (value.length > 15) {
            return Strings.passwordNotGreatThenFifteen;
          } else {
            return null;
          }
        });
  }
}
