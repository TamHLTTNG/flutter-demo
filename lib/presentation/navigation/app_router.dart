import 'package:auto_route/auto_route.dart';
import 'package:flutter_demo_app/presentation/navigation/app_router.gr.dart';

const kNavigationPath = "lib/presentation/navigation";

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.custom(
    reverseDurationInMilliseconds: 800,
    transitionsBuilder: (ctx, animation1, animation2, child) {
      return child;
    },
  );
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: InitRouter.page, path: '/init'),
    AutoRoute(page: LoginRouter.page, path: '/', initial: true),
    AutoRoute(page: HomeRouter.page, path: '/home'),
  ];
}
