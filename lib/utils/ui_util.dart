import 'package:flutter/material.dart';
import 'package:flutter_demo_app/presentation/components/dialogs/base_dialog.dart';
import 'package:flutter_demo_app/presentation/components/snack_bar/snack_bar_info.dart';
import 'package:flutter_demo_app/presentation/navigation/navigation_handler.dart';
import 'package:flutter_demo_app/presentation/theme/colors.dart';
import 'package:flutter_demo_app/utils/constants/app_strings.dart';

class UIUtil {
  static void showToastMessage(String message) {
    final context = appRouter.navigatorKey.currentState!.overlay!.context;

    SnackBarInfo(message, ScaffoldMessenger.of(context), AppColors.grey90)
        .show();
  }

  static void showSingleButtonDialog(
      {required String label,
      required String title,
      required String message,
      Function? onTap}) {
    final context = appRouter.navigatorKey.currentState!.overlay!.context;

    DialogManager.showSingleButtonDialog(context,
        title: title,
        label: label,
        message: message,
        barrierDismissible: true, onTap: () {
      onTap!();
      appRouter.pop();
    });
  }

  static void showConfirmDialog(
      {String? label,
      required String title,
      required String message,
      Function? onTap}) {
    final context = appRouter.navigatorKey.currentState!.overlay!.context;

    DialogManager.showConfirmDialog(context,
        title: title,
        confirm: label ?? AppStrings.okLabel,
        cancel: AppStrings.cancelLabel,
        message: message,
        dialogStyle: BaseDialogStyle(
          mainBackgroundColor: AppColors.mainBackgroundDialog,
        ),
        barrierDismissible: true,
        onCancel: appRouter.pop, onConfirm: () {
      onTap!();
      appRouter.pop();
    });
  }
}
