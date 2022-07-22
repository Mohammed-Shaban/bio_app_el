import 'package:bio_app_el/Screens/bio_screen.dart';
import 'package:bio_app_el/Screens/launch_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Launch_screen',
      routes: {
        '/Launch_screen' :(context)=> const LauncScreen(),
        '/bio_screen' :(context)=> const BioScreen(),
      },
    );
  }
}
