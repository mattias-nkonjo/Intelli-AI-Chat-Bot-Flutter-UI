import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p1_flutter_ai/src/components/components.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class IAI13 extends ConsumerWidget {
  const IAI13({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: NewGradientAppBar(
        gradient: ColorPalette.appbarGradient,
        title: const Text(
          Strings.passwordRecover,
          style: TextStyle(color: ColorPalette.blackColor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: ColorPalette.backgroundGradient,
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(ImagesUrl.recoveryImage),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    Strings.recoveryPasswordMessage,
                  ),
                  const SizedBox(height: 10),
                  Card(
                    elevation: 2.0,
                    color: ColorPalette.whiteColor,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        color: ColorPalette.blueColor,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      leading: Image.asset(ImagesUrl.sms),
                      title: const Text(Strings.viaSms),
                      subtitle: const Text('+1 111 ******99'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Card(
                    elevation: 2.0,
                    color: ColorPalette.whiteColor,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 2,
                        color: ColorPalette.whiteColor,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      leading: Image.asset(ImagesUrl.email),
                      title: const Text(Strings.email),
                      subtitle: const Text('and***ey@yourdomain.com'),
                    ),
                  ),
                ],
              ),
              aiaElevatedButton(
                onPressed: () {},
                label: Strings.confirm,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
