// ignore_for_file: library_private_types_in_public_api, equal_keys_in_map, unused_field, unused_import, deprecated_member_use, prefer_const_constructors, duplicate_import, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:stock_sample/config/config.dart';
import 'package:stock_sample/theme/theme.dart';

import 'config/preference.dart';
import 'config/routes.dart';
import 'core/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

import 'views/splash/splash_view.dart';

void main() async {
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    if (kReleaseMode) exit(1);
  };
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await SharedPreferenceHelper.init();
  runApp(
    MultiProvider(
      providers: ProviderInjector.providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      title: APP_NAME,
      theme: CustomTextTheme.light,
      navigatorObservers: [BotToastNavigatorObserver()],
      builder: kIsWeb ? BotToastInit() : null,
      getPages: Routes.getPages,
      home: SplashView(),
    );
  }
}
