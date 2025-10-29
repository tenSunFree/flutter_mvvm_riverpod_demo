import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/main/ui/main_screen.dart';
import 'routes.dart';

enum SlideDirection {
  right,
  left,
  up,
  down,
}

extension GoRouterStateExtension on GoRouterState {
  SlideRouteTransition slidePage(
    Widget child, {
    SlideDirection direction = SlideDirection.left,
  }) {
    return SlideRouteTransition(
      key: pageKey,
      child: child,
      direction: direction,
    );
  }
}

class SlideRouteTransition extends CustomTransitionPage<void> {
  SlideRouteTransition({
    required super.key,
    required super.child,
    SlideDirection direction = SlideDirection.left,
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curve = CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            );

            Offset begin;
            switch (direction) {
              case SlideDirection.right:
                begin = const Offset(-1.0, 0.0);
                break;
              case SlideDirection.left:
                begin = const Offset(1.0, 0.0);
                break;
              case SlideDirection.up:
                begin = const Offset(0.0, 1.0);
                break;
              case SlideDirection.down:
                begin = const Offset(0.0, -1.0);
                break;
            }
            final tween = Tween(begin: begin, end: Offset.zero);
            final offsetAnimation = tween.animate(curve);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
}

final GoRouter router = GoRouter(
  initialLocation: Routes.main,
  routes: [
    // GoRoute(
    //   path: Routes.splash,
    //   pageBuilder: (context, state) => state.slidePage(const SplashScreen()),
    // ),
    // GoRoute(
    //   path: Routes.register,
    //   pageBuilder: (context, state) => state.slidePage(const RegisterScreen()),
    // ),
    // GoRoute(
    //   path: Routes.login,
    //   pageBuilder: (context, state) => state.slidePage(const SignInScreen()),
    // ),
    // GoRoute(
    //     path: Routes.otp,
    //     pageBuilder: (context, state) {
    //       final map = state.extra as Map?;
    //       return state.slidePage(
    //         OtpScreen(
    //           email: map?['email'],
    //           isRegister: map?['isRegister'],
    //         ),
    //       );
    //     }),
    // GoRoute(
    //   path: Routes.onboarding,
    //   pageBuilder: (context, state) =>
    //       state.slidePage(const OnboardingScreen()),
    // ),
    GoRoute(
      path: Routes.main,
      pageBuilder: (context, state) => state.slidePage(MainScreen()),
    ),
    // GoRoute(
    //   path: Routes.accountInformation,
    //   pageBuilder: (context, state) {
    //     final profile = state.extra as Profile;
    //     return state.slidePage(AccountInfoScreen(originalProfile: profile));
    //   },
    // ),
    // GoRoute(
    //   path: Routes.appearances,
    //   pageBuilder: (context, state) =>
    //       state.slidePage(const AppearancesScreen()),
    // ),
    // GoRoute(
    //   path: Routes.languages,
    //   pageBuilder: (context, state) => state.slidePage(const LanguagesScreen()),
    // ),
    // GoRoute(
    //   path: Routes.premium,
    //   pageBuilder: (context, state) => state.slidePage(
    //     const PremiumScreen(),
    //     direction: SlideDirection.up,
    //   ),
    // ),
  ],
);
