import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset('assets/images/bgsplashscreen.png'),
        Center(
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 210,
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 229,
              )
            ],
          )),
        )
      ]),
    );
  }
}
