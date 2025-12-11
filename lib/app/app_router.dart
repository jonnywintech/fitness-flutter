import 'package:fitness/features/home/presentation/home_page.dart';
import 'package:fitness/shared/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute { home, sessions, profile }

GoRouter buildRouter() {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => BottomNavScaffold(shell: shell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                name: AppRoute.home.name,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: HomePage()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/session',
                name: AppRoute.sessions.name,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: Scaffold(body: Center(child: Text('Session'))),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                name: AppRoute.profile.name,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: Scaffold(body: Center(child: Text('Profile'))),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
