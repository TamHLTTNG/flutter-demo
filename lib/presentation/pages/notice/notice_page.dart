import 'package:flutter/material.dart';
import 'package:flutter_demo_app/utils/constants/app_strings.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Text(AppStrings.pleaseAddContent),
          ),
        ),
      );
}
