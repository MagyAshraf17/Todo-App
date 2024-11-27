import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todo_app/core/app_theme_maneger.dart';

import 'core/page_route_name.dart';
import 'core/route_generator.dart';
import 'firebase_options.dart';

void main() {
  // async
  // make sure that all functions was have response
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "todo App",
     initialRoute: PageRouteName.initialPage,
      onGenerateRoute: RouteGenerator.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      theme: AppThemeManager.lightTheme,
     );
  }
}
