import 'package:flutter/material.dart';
import '../ui/navigation/main_navigation.dart';
import '../ui/screens/main_screen.dart';

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: const Main(),
      //
      routes: mainNavigation.routes,
      // initialRoute: mainNavigation.initialRoute(model.isAuth),
      onGenerateRoute: mainNavigation.onGenerateRoute,
    //
    );
  }
}
