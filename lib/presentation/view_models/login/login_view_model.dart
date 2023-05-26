import 'dart:async';

import 'package:flutter_demo_app/data/remotes/google_sign_in.dart';
import 'package:flutter_demo_app/presentation/navigation/app_router.gr.dart';
import 'package:flutter_demo_app/presentation/navigation/navigation_handler.dart';
import 'package:flutter_demo_app/presentation/view_models/base/base_view_model.dart';
import 'package:flutter_demo_app/presentation/view_models/login/login_state.dart';
import 'package:flutter_demo_app/presentation/view_models/login/login_validate.dart';
import 'package:flutter_demo_app/utils/constants/app_strings.dart';

class LoginViewModel extends BaseViewModel<LoginState> {
  LoginViewModel({required this.navigationHandler}) : super(LoginState());

  final NavigationHandler navigationHandler;

  @override
  Future<void> onInit() async {}

  void onEmailChange(String email) {
    setState((state) => state.copyWith(email: email));
  }

  void onPasswordChange(String password) {
    setState((state) => state.copyWith(password: password));
  }

  String getErrorMessage() {
    switch (state.formStatus) {
      case FormStatus.initial:
        return AppStrings.empty;
      case FormStatus.invalid:
        return AppStrings.loginErrorLabel;
      case FormStatus.valid:
        return AppStrings.empty;
    }
  }

  Future<bool> loginAction() async {
    bool loginSuccess = false;
    final emailValid =
        LoginValidationResults.validateEmail(state.email).isValid;

    final passwordValid =
        LoginValidationResults.validatePassword(state.password).isValid;

    final isFormValid = emailValid && passwordValid;

    setState((state) => state.copyWith(
        formStatus: isFormValid ? FormStatus.valid : FormStatus.invalid));

    if (isFormValid) {
      await navigationHandler.reset(route: InitRouter());
      loginSuccess = true;
    }
    return loginSuccess;
  }

  void forgotPasswordAction() {}

  Future<void> loginWithGoogle() async {
    final googleSignInstance = await GoogleSignInFirebase.getInstance();
    final bool isLogin = await googleSignInstance!.signInGoogle();
    if (isLogin) {
      await navigationHandler.push(route: HomeRouter());
    }
  }
}
