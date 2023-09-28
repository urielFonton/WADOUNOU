import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/module/account/orders/waiting_orders/widget/orders_page_listview.dart';
import 'package:flutter/material.dart';

class OrdersPageView extends StatelessWidget {
  const OrdersPageView({super.key});

  static String routeName = '/orders_page_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      /* appBar: AppBar(
            title: const Text(
              "Commandes en attentes",
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
            )), */
            body: OrdersPageListView(),
    );
  }
}