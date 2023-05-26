import 'dart:async';

import 'package:flutter_demo_app/presentation/navigation/app_router.gr.dart';
import 'package:flutter_demo_app/presentation/navigation/navigation_handler.dart';
import 'package:flutter_demo_app/presentation/view_models/base/base_view_model.dart';
import 'package:flutter_demo_app/presentation/view_models/init/init_state.dart';

class InitViewModel extends BaseViewModel<InitState> {
  InitViewModel({required this.navigationHandler}) : super(InitState());

  final NavigationHandler navigationHandler;

  @override
  Future<void> onInit() async {}

  void setTabIndex(int tabIndex) {
    setState(
      (state) => state.copyWith(
        tabIndex: TabIndex.values.firstWhere(
          (element) => element.index == tabIndex,
        ),
      ),
    );
  }

  Future<bool> logout() async {
    // TODO(handler): handle logout
    await navigationHandler.reset(route: LoginRouter());
    return true;
  }
}
