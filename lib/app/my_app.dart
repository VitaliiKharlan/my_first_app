import 'package:flutter/material.dart';

import '../ui/screens/main_screen.dart';

class MyApp extends StatelessWidget {
  // static final mainNavigation = MainNavigation();
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: const Main(),
    );
  }
}
