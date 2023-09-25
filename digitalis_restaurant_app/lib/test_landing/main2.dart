/* import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/routing/app_route.dart';
import 'package:digitalis_restaurant_app/shared/ui/colors.dart';
import 'package:digitalis_restaurant_app/shared/ui/ui_helpers.dart';
import 'package:digitalis_restaurant_app/test_landing/widgets/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MLanding Testing',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: LandingTesting(),
      routes: routes,
    );
  }
}

class LandingTesting extends StatelessWidget {
  const LandingTesting({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
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
                          SizedBox(
                            height: 50.0,
                          ),
                          Text('WADOUNOU',
                              style: GoogleFonts.pacifico(
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
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    "Trouvez les repas que vous aimez !",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 28.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    "Découvrez les meilleurs repas de plus de 100 restaurants",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aBeeZee(
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
                            onPressed: () {},
                            child: Text(
                              "Inscrivez - vous",
                              style: GoogleFonts.aBeeZee(
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                            },
                            child: Text(
                              "Connectez-vous",
                              style: GoogleFonts.aBeeZee(
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
                            onPressed: () {},
                            child: Text(
                              'Naviguer en tant que simple utilisateur'
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

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
              colors: [Colors.white, Colors.black26],
              begin: Alignment.bottomCenter,
              end: Alignment.center)
          .createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/brochette_poulet.jpg'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black12, BlendMode.darken))),
      ),
    );
  }
}
 */