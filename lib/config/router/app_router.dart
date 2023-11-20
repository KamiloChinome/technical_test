import 'package:go_router/go_router.dart';
import 'package:technical_test/UI/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(path: '/', name: HomeScreen.name, builder: (context, state) => const HomeScreen(), routes: [
      GoRoute(
        name: NotificationsScreen.name,
        path: 'notifications',
        builder: (context, state) => const NotificationsScreen(),
      ),
    ]),
    GoRoute(
      path: '/splash',
      name: SplashScreen.name,
      builder: (context, state) => const SplashScreen(),
    )
  ],
);
