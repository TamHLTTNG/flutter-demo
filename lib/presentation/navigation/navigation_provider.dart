import 'package:flutter_demo_app/presentation/navigation/navigation_handler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final navigationProvider = Provider<NavigationHandler>((ref) {
  return NavigationHandler();
});
