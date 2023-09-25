import 'package:digitalis_restaurant_app/core/utils/size_config.dart';
import 'package:digitalis_restaurant_app/module/start/presentation/landing/presentation/landing_screen.dart';
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
            if (choice == 'Ajouter/Gérer un restaurant') {
               Navigator.pushNamed(context, LandingScreen.routeName);
            } 
            if (choice == 'S\'enregistrer en tant que livreur') {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => const LandingScreen()));
            } 
            if (choice == 'Faire une réservation') {
               //Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
            }
            if (choice == 'Faire une commande') {
               //Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
            }
            if (choice == 'Commandes en cours') {
               //Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
            }
            if (choice == 'Réservations en cours') {
               //Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
            }
          },
          itemBuilder: (BuildContext context) {
            return [
              'Ajouter/Gérer un restaurant',
              'S\'enregistrer en tant que livreur',
              'Faire une réservation',
              'Faire une commande',
              'Commandes en cours',
              'Réservations en cours',
            ].map((String choice) {
              return PopupMenuItem(value: choice, child: Text(choice));
            }).toList();
          },
          padding: const EdgeInsets.all(0),
        ));
  }
}