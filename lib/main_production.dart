import 'package:flutter/material.dart';
import 'package:flutter_demo_app/config/flavors.dart';
import 'package:flutter_demo_app/flutter_demo_app.dart';
import 'package:flutter_demo_app/initialize.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  F.appFlavor = Flavor.PRODUCTION;
  await initialize();
  runApp(ProviderScope(child: FlutterDemoApp()));
}
