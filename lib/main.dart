import 'package:flutter/material.dart';
import 'package:overlays_wscube/home_page.dart';
import 'package:overlays_wscube/radio_button_page.dart';

// GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dialogs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RadioButtonPage(),
    );
  }
}
