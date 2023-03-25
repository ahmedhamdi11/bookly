import 'package:bookly/Features/Home/presentation/views/home_view.dart';
import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String homeViewPath = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
