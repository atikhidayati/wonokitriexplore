import 'package:flutter/material.dart';import 'onboarding/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
    Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Wonokitri Explore',
          theme: ThemeData(
          primarySwatch: Colors.green),
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        );
      }
    }