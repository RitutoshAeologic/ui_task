import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/router.dart';
import 'package:ui_task/ui/home_screen.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(BuildContext context) {
       return ScreenUtilInit(
      designSize: Size(360, 640),
      builder: (_,a) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          home: HomeScreen(),
          onGenerateRoute: RouterApp.generateRoute,
          initialRoute: Routes.homeScreen,
        );
      },
    );
  }
}