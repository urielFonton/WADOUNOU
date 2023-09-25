import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/module/screens/login/login_page.dart';
import 'package:digitalis_restaurant_app/module/screens/signup/sign_up_page.dart';
import 'package:digitalis_restaurant_app/module/start/presentation/landing/presentation/widgets/background.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/home_screen.dart';
import 'package:digitalis_restaurant_app/shared/ui/colors.dart';
import 'package:digitalis_restaurant_app/shared/ui/ui_helpers.dart';
import 'package:flutter/material.dart';

class LandingScreenBody extends StatelessWidget {
  const LandingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50.0,
                          ),
                          const Text('WADOUNOU',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Container(
                            color: Colors.white,
                            width: 150,
                            height: 5.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Text(
                    "Trouvez les repas que vous aimez !",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Text(
                    "Découvrez les meilleurs repas de plus de 100 restaurants",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  verticalSpaceTiny,
                  verticalSpaceTiny,
                  verticalSpaceTiny,
                  verticalSpaceTiny,
                  verticalSpaceTiny,
                  verticalSpaceTiny,
                  verticalSpaceTiny,
                  Padding(
                    padding: const EdgeInsets.all(50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        MaterialButton(
                            height: 55.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: kPrimaryColor,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                            },
                            child: const Text(
                              "Inscrivez - vous",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                        verticalSpaceSmall,
                        MaterialButton(
                            height: 55.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamed(context, LoginPage.routeName);
                            },
                            child: const Text(
                              "Connectez-vous",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            )),
                        verticalSpaceTiny,
                        verticalSpaceTiny,
                        verticalSpaceTiny,
                        verticalSpaceTiny,
                        verticalSpaceTiny,
                        verticalSpaceTiny,
                        verticalSpaceTiny,
                        verticalSpaceTiny,
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, HomeScreen.routeName);
                            },
                            child: Text(
                              'Retour à la page d\'accueil'
                                  .toUpperCase(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: kcWhiteColor,
                                  fontSize: 14.0,
                                  decoration: TextDecoration.underline),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}