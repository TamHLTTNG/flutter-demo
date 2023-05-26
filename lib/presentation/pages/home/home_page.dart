import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_app/presentation/view_models/home/home_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage(name: 'HomeRouter')
class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context, WidgetRef widgetRef) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Text(
                widgetRef.watch(homeProvider).user?.email ?? "demo@gmail.com"),
          ),
        ),
      );
}
