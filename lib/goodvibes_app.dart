import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goodvibes/core/routes/app_router.dart';
import 'package:goodvibes/core/routes/routes.dart';

class GoodvibesApp extends StatelessWidget {
  const GoodvibesApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return ScreenUtilInit(
      designSize: Size(width, height),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onBoardingScreen,
          onGenerateRoute: appRouter.generateRoute,
          theme: ThemeData(
            primaryColor: Colors.green,
            scaffoldBackgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
