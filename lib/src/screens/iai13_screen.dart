import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p1_flutter_ai/src/components/components.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class IAI13 extends ConsumerStatefulWidget {
  const IAI13({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IAI13State();
}

class _IAI13State extends ConsumerState<IAI13> {
  late final TextEditingController _password;
  late final TextEditingController _verifyPassword;
  late final TextEditingController _email;
  late final TextEditingController _name;

  @override
  void initState() {
    super.initState();
    _password = TextEditingController();
    _email = TextEditingController();
    _name = TextEditingController();
    _verifyPassword = TextEditingController();
  }

  @override
  void dispose() {
    _password.dispose();
    _email.dispose();
    _name.dispose();
    _verifyPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        gradient: ColorPalette.appbarGradient,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints.expand(height: 710),
            decoration: BoxDecoration(
              gradient: ColorPalette.backgroundGradient,
            ),
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: const [
                    Text('Verify Phone Number'),
                    Text(
                        'Please enter the 4 digit code sent to +971 50 123 4567 through SMS'),
                  ],
                ),
                Form(
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      nameTextFormField(
                        controller: _name,
                        label: Strings.name,
                      ),
                      const SizedBox(height: 10),
                      emailTextFormField(
                        controller: _email,
                        label: Strings.email,
                      ),
                      const SizedBox(height: 10),

                      ///  Password Text Form Field
                      PasswordTextField(
                        controller: _password,
                        label: Strings.password,
                      ),
                      const SizedBox(height: 10),

                      /// ReEnter Password Text Form Field
                      PasswordTextField(
                        controller: _verifyPassword,
                        label: Strings.verifyPassword,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),

                /// Sign In Buttons
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorPalette.blackColor,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(Strings.signIn),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
