import 'package:athletic/src/core/imports/app_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Paint.enableDithering = true;

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return false;
      },
      child: ScreenUtilInit(
        designSize: const Size(1080, 1920),
        builder: (_,__) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.red,
              dividerColor: Colors.transparent,
              canvasColor: Colors.transparent,
              splashColor:  Colors.transparent,
              useMaterial3: true),
          title: 'Atletic',
          initialRoute: AppRoutes.referralsOnboardPage,
          getPages: AppPages.appPages,
        ),
      ),
    );
  }
}