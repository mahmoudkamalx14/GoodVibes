import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goodvibes/core/routes/app_router.dart';
import 'package:goodvibes/goodvibes_app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(
    GoodvibesApp(appRouter: AppRouter()),
  );
}


//! dart run build_runner build --delete-conflicting-outputs


//? dart run flutter_native_splash:create --path=flutter_native_splash.yaml