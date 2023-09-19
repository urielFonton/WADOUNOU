import 'package:digitalis_restaurant_app/core/utils/responsive.dart';
import 'package:digitalis_restaurant_app/core/widgets/brandings/app_logo.dart';
import 'package:digitalis_restaurant_app/shared/ui/colors.dart';
import 'package:digitalis_restaurant_app/shared/ui/ui_helpers.dart';
import 'package:digitalis_restaurant_app/shared/ui/widgets/text/app_text.dart';
import 'package:digitalis_restaurant_app/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingScreenBody extends StatelessWidget {
  const LandingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, si) {
      switch (getDeviceScreenType(si)) {
        case DisplayType.phone:
          return _buildMobileView(context);
        case DisplayType.tablet:
          return const Center();
      }
    });
  }

  Widget _buildMobileView(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset("assets/images/images (3).jpeg").image,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.dstATop),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  verticalSpaceLarge,
                  verticalSpaceLarge,
                  verticalSpaceTiny,
                  const AppLogo.largePrimary(
                    width: 120,
                    height: 120,
                    showOnlyLogo: true,
                  ),
                  verticalSpaceSmall,
                  Text(
                    'WADOUNOU'.toUpperCase(),
                    textScaleFactor: 1.5,
                    style: const TextStyle(
                        color: kcWhiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  verticalSpaceSmall,
                  const Text(
                    'Trouver les repas que vous aimez',
                    textScaleFactor: 1.2,
                    style: TextStyle(color: kcWhiteColor, fontSize: 20),
                  ),
                  verticalSpaceSmall,
                  AppText.caption(
                    "Découvrez les meilleurs repas de plus de 100 restaurants",
                    color: kcWhiteColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DefaultButton(
                          text: 'Inscrivez - vous',
                          press: () {},
                        ),
                        verticalSpaceSmall,
                        DefaultButton(text: 'Connectez-vous', press: () {}),
                        verticalSpaceTiny,
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Naviguer en tant que simple utilisateur'
                                  .toUpperCase(),
                              style: const TextStyle(color: kcWhiteColor),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}