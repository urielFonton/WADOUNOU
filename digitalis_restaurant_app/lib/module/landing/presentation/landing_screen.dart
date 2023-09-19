import 'package:digitalis_restaurant_app/module/landing/presentation/widgets/landing_screen.body.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  static String routeName = '/landing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Connexion ou Inscription"),
      ),
      body: const LandingScreenBody(),
    );
  }

  
}