import 'package:digitalis_restaurant_app/module/account/reservations/make_reservations/make_reservation_body.dart';
import 'package:flutter/material.dart';

class MakeReservationScreen extends StatelessWidget {
  const MakeReservationScreen({super.key});

  static String routeName = "/make_reservation_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text(
        "Réservation",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 18.0,
          ),
        )
    ),
    body: MakeReservationBody(),
    );
  }
}