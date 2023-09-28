import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/module/account/delivery_list_view/widgets/delivery_person_listview_body.dart';
import 'package:flutter/material.dart';

class DeliveryPersonListviewPage extends StatelessWidget {
  const DeliveryPersonListviewPage({super.key});

  static String routeName = '/delivery_person_listview_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
            title: const Text(
              "Mes Livreurs",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
            ),
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 18.0,
              ),
            )),
            body: DeliveryPersonListviewBody(),
    );
  }
}