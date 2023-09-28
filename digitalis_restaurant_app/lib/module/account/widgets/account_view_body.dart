import 'package:digitalis_restaurant_app/module/account/add_delivery_person/add_delivery_person_page.dart';
import 'package:digitalis_restaurant_app/module/account/add_meal/add_meal_page.dart';
import 'package:digitalis_restaurant_app/module/account/data/profile_picture.dart';
import 'package:digitalis_restaurant_app/module/account/delivery_list_view/delivery_person_listview_page.dart';
import 'package:digitalis_restaurant_app/module/account/orders/pending_orders/doned_orders_view_page.dart';
import 'package:digitalis_restaurant_app/module/account/orders/waiting_orders/orders_page_view.dart';
import 'package:digitalis_restaurant_app/module/account/profile/profile_page.dart';
import 'package:digitalis_restaurant_app/module/account/reservations/doned_booking/doned_reservation_view_page.dart';
import 'package:digitalis_restaurant_app/module/account/reservations/waiting_booking/waiting_reservation_page.dart';
import 'package:digitalis_restaurant_app/module/account/subscription/subscription_page.dart';
import 'package:digitalis_restaurant_app/shared/ui/ui_helpers.dart';
import 'package:flutter/material.dart';

final _menu = [
  {'title': 'Gérer mon abonnement', 'route': SubscriptionPage.routeName},
  {'title': 'Ajouter un Repas', 'route': AddMealPage.routeName},
  {'title': 'Ajouter un Livreur', 'route': AddDeliveryPersonPage.routeName},
  {'title': 'Voir mes livreurs', 'route': DeliveryPersonListviewPage.routeName},
  {'title': 'Commandes en terminée(s)', 'route': DonedOrdersViewPage.routeName},
  {
    'title': 'Réservation(s) terminée(s)',
    'route': DonedReservationViewPage.routeName
  },
  {'title': 'Commandes en attentes', 'route': OrdersPageView.routeName},
  {
    'title': 'Réservations en attentes',
    'route': WaitingReservationPage.routeName
  },
  {'title': 'Modifier le profile', 'route': ProfilePage.routeName},
  {'title': 'Logout', 'action': 'logout'},
];

class AccountViewBody extends StatefulWidget {
  const AccountViewBody({super.key});

  @override
  State<AccountViewBody> createState() => _AccountViewBodyState();
}

class _AccountViewBodyState extends State<AccountViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            child: header(context),
          ),
          SizedBox(
            height: 8.0,
          ),
          Flexible(
            child: Container(
              color: Colors.white,
              child: ListView.separated(
                key: ValueKey("account"),
                itemCount: _menu.length,
                separatorBuilder: (_, i) {
                  if (i == -1) {
                    return const SizedBox();
                  }
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(),
                  );
                },
                itemBuilder: (_, i) {
                  return ListTile(
                    key: ValueKey("item_${i}_account"),
                    title: Text(
                      _menu[i]['title'].toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 16,
                    ),
                    onTap: () /* async */ {
                      /* if (_menu[i]['action'] != null) {
                        if (_menu[i]['action'] == 'logout') {

                        }
                      } */
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget header(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: Row(
        children: [
          Image.asset(
            "assets/images/avatar.jpg",
            height: 100,
            width: 100,
          ),
          horizontalSpaceTiny,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700, color: Colors.black),
                  overflow: TextOverflow.fade,
                ),
                Text(
                  "User email",
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
