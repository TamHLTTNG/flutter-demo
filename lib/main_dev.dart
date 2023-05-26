import 'package:flutter/material.dart';
import 'package:flutter_demo_app/config/flavors.dart';
import 'package:flutter_demo_app/flutter_demo_app.dart';
import 'package:flutter_demo_app/initialize.dart';
import 'package:flutter_demo_app/presentation/view_models/base/logger_provider_observable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  F.appFlavor = Flavor.DEV;
  await initialize();
  runApp(ProviderScope(
      observers: []..addAll([LoggerProviderObservable()]),
      child: FlutterDemoApp()));
}
