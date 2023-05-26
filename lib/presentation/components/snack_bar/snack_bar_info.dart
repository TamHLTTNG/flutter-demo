import 'package:flutter/material.dart';
import 'package:flutter_demo_app/presentation/theme/colors.dart';
import 'package:flutter_demo_app/presentation/theme/radius_alias.dart';

class SnackBarInfo extends SnackBar {
  SnackBarInfo(this.title, this.scaffoldMessengerState, this.backgroundColor,
      {Key? key, bool showCloseButton = false})
      : super(
          key: key,
          content: Row(
            children: [
              Expanded(child: Text(title, textAlign: TextAlign.center)),
              if (showCloseButton)
                InkWell(
                  onTap: scaffoldMessengerState.hideCurrentSnackBar,
                  child: const Icon(Icons.close, color: AppColors.white),
                ),
            ],
          ),
          duration: Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusAlias.Radius8),
          ),
          backgroundColor: backgroundColor,
        );

  final String title;
  final ScaffoldMessengerState scaffoldMessengerState;
  final Color? backgroundColor;

  void show() => scaffoldMessengerState.showSnackBar(this);
}
