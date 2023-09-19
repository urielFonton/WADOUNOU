import 'package:digitalis_restaurant_app/core/utils/size_config.dart';
import 'package:digitalis_restaurant_app/module/landing/presentation/landing_screen.dart';
import 'package:digitalis_restaurant_app/module/start/presentation/onBoarding_screen/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class PopUpMenu extends StatelessWidget {
  const PopUpMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: 50,
        width: 50,
        child: PopupMenuButton<String>(
          iconSize: 27,
          onSelected: (String choice) {
            if (choice == 'Faire une commande') {
              print("ok");
               Navigator.pushNamed(context, LandingScreen.routeName);
            } 
            if (choice == 'Ajouter un restaurant') {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LandingScreen()));
            } 
             if (choice == 'Ajouter un livreur') {
               Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
              print("yes");            }
          },
          itemBuilder: (BuildContext context) {
            return [
              'Faire une commande',
              'Ajouter un restaurant',
              'Ajouter un livreur'
            ].map((String choice) {
              return PopupMenuItem(value: choice, child: Text(choice));
            }).toList();
          },
          padding: const EdgeInsets.all(0),
        ));
  }
}