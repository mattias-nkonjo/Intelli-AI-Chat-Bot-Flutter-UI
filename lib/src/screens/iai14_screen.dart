import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p1_flutter_ai/src/components/components.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class IAI14 extends ConsumerStatefulWidget {
  const IAI14({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IAI14State();
}

class _IAI14State extends ConsumerState<IAI14> {
  late final TextEditingController _firstDigit;
  late final TextEditingController _secondDigit;
  late final TextEditingController _thirdDigit;
  late final TextEditingController _fourthDigit;

  @override
  void initState() {
    super.initState();
    _firstDigit = TextEditingController();
    _secondDigit = TextEditingController();
    _thirdDigit = TextEditingController();
    _fourthDigit = TextEditingController();
  }

  @override
  void dispose() {
    _firstDigit.dispose();
    _secondDigit.dispose();
    _thirdDigit.dispose();
    _fourthDigit.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        gradient: ColorPalette.appbarGradient,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: ColorPalette.backgroundGradient,
          ),
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /// First Section
              Column(
                children: const [
                  Text(
                    Strings.verifyEmail,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    Strings.weHaveSentEmail,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              /// Second Section
              Column(
                children: [
                  Form(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DigitTextFormField(controller: _firstDigit),
                            DigitTextFormField(controller: _secondDigit),
                            DigitTextFormField(controller: _thirdDigit),
                            DigitTextFormField(controller: _fourthDigit),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(Strings.didntReceiveCode),
                      TextButton(
                        onPressed: () {},
                        child: const Text(Strings.resendEmail),
                      )
                    ],
                  ),
                ],
              ),

              /// Third Section
              Column(
                /// Verify Number Button
                children: [
                  aiaElevatedButton(
                    onPressed: () {},
                    label: Strings.verifyEmail,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    Strings.termsOfUseAndPrivacy,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
