import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:royalgambit_recruitment_app/presentations/home/view/home_page.dart';
import 'package:royalgambit_recruitment_app/presentations/search/view/search_page.dart';
import 'package:royalgambit_recruitment_app/router/app_routes.dart';

class AppRouter {
  late final instance = GoRouter(
    initialLocation: '/${AppRoutes.home}',
    routes: [
      GoRoute(
        name: AppRoutes.home,
        path: '/${AppRoutes.home}',
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        name: AppRoutes.search,
        path: '/${AppRoutes.search}',
        builder: (context, state) {
          return const SearchPage();
        },
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const SearchPage(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeIn).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
    ],
  );
}
