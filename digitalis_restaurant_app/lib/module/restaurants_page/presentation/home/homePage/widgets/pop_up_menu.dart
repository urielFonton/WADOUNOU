import 'package:digitalis_restaurant_app/core/utils/size_config.dart';
import 'package:digitalis_restaurant_app/module/account/reservations/make_reservations/make_reservation_screen.dart';
import 'package:digitalis_restaurant_app/module/register_delivery_person_pages/register_as_delivery_person/register_delivery_person.dart';
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
              Navigator.pushNamed(context, RegisterDeliveryPerson.routeName);
            } 
            if (choice == 'Faire une réservation') {
              Navigator.pushNamed(context, MakeReservationScreen.routeName);
            }
          },
          itemBuilder: (BuildContext context) {
            return [
              'Ajouter/Gérer un restaurant',
              'S\'enregistrer en tant que livreur',
              'Faire une réservation',
              'Faire une commande',
            ].map((String choice) {
              return PopupMenuItem(value: choice, child: Text(choice));
            }).toList();
          },
          padding: const EdgeInsets.all(0),
        ));
  }
}