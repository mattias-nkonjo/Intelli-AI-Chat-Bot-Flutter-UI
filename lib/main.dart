import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p1_flutter_ai/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:p1_flutter_ai/src/constants/constants.dart';
import 'package:p1_flutter_ai/src/routing/app_route.dart';
import 'package:p1_flutter_ai/theme/pa1_flutter_ai_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Flutter before anything else
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final themeMode = ref.watch(themeNotifierProvider.notifier).mode;
    return MaterialApp.router(
      title: Strings.appName,
      theme: P1FlutterAiTheme.lightModeAppTheme,
      darkTheme: P1FlutterAiTheme.darkModeAppTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      routerDelegate: AppRouter.router.routerDelegate,
    );
  }
}
