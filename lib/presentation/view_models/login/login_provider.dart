import 'package:flutter_demo_app/presentation/navigation/navigation_provider.dart';
import 'package:flutter_demo_app/presentation/view_models/login/login_state.dart';
import 'package:flutter_demo_app/presentation/view_models/login/login_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider =
    StateNotifierProvider.autoDispose<LoginViewModel, LoginState>(
  (ref) {
    final navigationHandler = ref.watch(navigationProvider);

    return LoginViewModel(
      navigationHandler: navigationHandler,
    );
  },
);
