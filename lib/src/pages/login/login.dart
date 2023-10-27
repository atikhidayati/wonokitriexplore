import 'package:flutter/material.dart';
import 'package:wonokitriexplore/src/pages/onboarding/OnboardingScreen.dart';

import '../../widget/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonComponent(title: "Simpan",color: Colors.blue,size: MediaQuery.of(context).size.width -50,onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) {
              return OnboardingScreen();
            }));},),
          ],
        ),
      ),
    );
  }
}

