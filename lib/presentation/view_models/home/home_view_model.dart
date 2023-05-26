import 'dart:async';

import 'package:flutter_demo_app/data/locals/app_preferences/app_preferences.dart';
import 'package:flutter_demo_app/presentation/navigation/navigation_handler.dart';
import 'package:flutter_demo_app/presentation/view_models/base/base_view_model.dart';
import 'package:flutter_demo_app/presentation/view_models/home/home_state.dart';

class HomeViewModel extends BaseViewModel<HomeState> {
  HomeViewModel({required this.navigationHandler}) : super(HomeState());

  final NavigationHandler navigationHandler;

  @override
  Future<void> onInit() async {
    await getUser();
  }

  Future<void> getUser() async {
    final _user = (await AppPreferences().getUserData())!;
    setState((state) => state.copyWith(user: _user));
  }
}
