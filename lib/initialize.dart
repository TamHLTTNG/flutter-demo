import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_demo_app/firebase_options.dart';
import 'package:flutter_demo_app/utils/shared_preferences_util.dart';
import 'package:intl/intl.dart';

Future<void> initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesUtil.getInstance();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Intl.defaultLocale = 'ja';
}
