import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/config/constants/strings.dart';
import 'package:react_conf/src/config/routes/route.dart';
import 'package:react_conf/src/features/home/presentation/home_page.dart';

import 'src/config/constants/font_assets.dart';
import 'src/config/http_overrides.dart';
import 'src/core/di/dependency_injection.dart';
import 'src/core/utility/log.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    setup();
    runApp(const MyApp());
  }, (error, stackTrace) async {
    appPrint('runzoned error');
    appPrint(error.runtimeType.toString());
    appPrint(error.toString());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: StringData.appName,
          debugShowCheckedModeBanner: false,
          navigatorKey: navigatorKey,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
              child: child ?? const SizedBox(),
            );
          },
          theme: ThemeData(
            dividerColor: Colors.transparent,
            fontFamily: FontAssets.fontFamilyInter,
          ),
          home: const HomePage(),
        );
      },
    );
  }
}
