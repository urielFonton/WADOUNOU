import 'package:digitalis_restaurant_app/core/utils/size_config.dart';
import 'package:digitalis_restaurant_app/module/start/presentation/onBoarding_screen/widgets/on_boarding_screen_body.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  static String routeName = "/onboarding";

  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return const Scaffold(
      body: OnBoardingScreenBody(),
    );
  }
}