import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p1_flutter_ai/src/components/components.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class IAI02 extends ConsumerStatefulWidget {
  const IAI02({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IAI02State();
}

class _IAI02State extends ConsumerState<IAI02> {
  late final TextEditingController _password;
  late final TextEditingController _email;

  @override
  void initState() {
    super.initState();
    _password = TextEditingController();
    _email = TextEditingController();
  }

  @override
  void dispose() {
    _password.dispose();
    _email.dispose();
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
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Flexible(
                  child: Text(
                    Strings.signInPageContent,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                Form(
                  child: Column(
                    children: [
                      emailTextFormField(
                        controller: _email,
                        label: Strings.email,
                      ),
                      const SizedBox(height: 10),
                      PasswordTextField(
                        controller: _password,
                        label: Strings.password,
                      ),
                    ],
                  ),
                ),

                /// Recover Password Text Button
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    alignment: Alignment.centerRight,
                    minimumSize: const Size(double.infinity, 20),
                  ),
                  child: const Text(
                    Strings.recoverPassword,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ColorPalette.faithColor,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

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
                const SizedBox(height: 30),
                signInDivider(),
                const SizedBox(height: 30),

                /// Social Media Sign In Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    googleSignInButton(
                      onPressed: () {},
                    ),
                    appleSignInButton(
                      onPressed: () {},
                    ),
                    facebookSignIButton(
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
