import 'package:flutter/material.dart';
import 'package:unsad/screens/home.dart';
import 'package:unsad/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showSplash = true;
  showSplashScreen() {
    Future.delayed(const Duration(milliseconds: 1500), () {
      setState(() {
        showSplash = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    showSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: showSplash ? const Splash() : const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
