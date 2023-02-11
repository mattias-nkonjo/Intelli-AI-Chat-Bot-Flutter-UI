import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:p1_flutter_ai/src/routing/const_routes.dart';
import 'package:p1_flutter_ai/src/routing/pages.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/verify-phone-number',
    routes: [
      GoRoute(
        path: '/',
        name: ConstRoutes.iai01,
        builder: (context, state) => const IAI01(),
        routes: [
          GoRoute(
            path: 'sign-up',
            name: ConstRoutes.iai03,
            builder: (context, state) => const IAI03(),
          ),
          GoRoute(
            path: 'sign-in',
            name: ConstRoutes.iai02,
            builder: (context, state) => const IAI02(),
          ),
        ],
      ),
      GoRoute(
        path: '/verify-phone-number',
        name: ConstRoutes.iai12,
        builder: (context, state) => const IAI12(),
      ),
      GoRoute(
        path: '/verify-phone-email',
        name: ConstRoutes.iai14,
        builder: (context, state) => const IAI14(),
      ),
      GoRoute(
        path: '/recover-password',
        name: ConstRoutes.iai13,
        builder: (context, state) => const IAI13(),
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const Center(
        child: Text('Navigation Error'),
      ),
    ),
  );
}
