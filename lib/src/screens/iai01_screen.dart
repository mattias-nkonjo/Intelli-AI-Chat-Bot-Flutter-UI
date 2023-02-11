import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:p1_flutter_ai/src/components/components.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';
import 'package:p1_flutter_ai/src/routing/const_routes.dart';

class IAI01 extends ConsumerWidget {
  const IAI01({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: ColorPalette.backgroundGradient,
          ),
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: Image.asset(
                  ImagesUrl.character19,
                  height: 240,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.companyName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    Strings.moto,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    Strings.aboutApp,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  signButton(
                    onPress: () => context.goNamed(ConstRoutes.iai03),
                    text: Strings.signUp,
                  ),
                  signButton(
                      onPress: () => context.goNamed(ConstRoutes.iai02),
                      text: Strings.signIn,
                      backGroundColor: ColorPalette.whiteColor,
                      textColor: ColorPalette.blackColor),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
