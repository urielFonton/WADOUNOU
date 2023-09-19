import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreenContent extends StatelessWidget {
  const SplashScreenContent({
    required this.text,
    required this.image,
  });

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          "WADOUNOU",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(25),
            color: kPrimaryColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.02,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}