// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter_demo_app/presentation/pages/home/home_page.dart' as _i2;
import 'package:flutter_demo_app/presentation/pages/init/init_page.dart' as _i1;
import 'package:flutter_demo_app/presentation/pages/login/login_page.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    InitRouter.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.InitPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    LoginRouter.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.LoginPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.InitPage]
class InitRouter extends _i4.PageRouteInfo<void> {
  const InitRouter({List<_i4.PageRouteInfo>? children})
      : super(
          InitRouter.name,
          initialChildren: children,
        );

  static const String name = 'InitRouter';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRouter extends _i4.PageRouteInfo<void> {
  const HomeRouter({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouter';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRouter extends _i4.PageRouteInfo<void> {
  const LoginRouter({List<_i4.PageRouteInfo>? children})
      : super(
          LoginRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginRouter';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
