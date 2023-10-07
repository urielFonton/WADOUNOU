import 'package:digitalis_restaurant_app/shared/ui/ui_helpers.dart';
import 'package:flutter/material.dart';

final _tasks = [
  {'title': 'Modifier mon profil', 'route' : ''},
  {'title': 'Livraison(s) en attente(s)', 'route': '' },
  {'title': 'Restaurant(s) affilié(s)', 'route': ''},
  {'title': 'Déconnexion', 'action': 'logout'}
];

class AccountViewDeliveryPersonBody extends StatefulWidget {
  const AccountViewDeliveryPersonBody({super.key});

  @override
  State<AccountViewDeliveryPersonBody> createState() => _AccountViewDeliveryPersonBodyState();
}

class _AccountViewDeliveryPersonBodyState extends State<AccountViewDeliveryPersonBody> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: header(context),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Flexible(
              child: Container(
                color: Colors.white,
                child: ListView.separated(
                  key: const ValueKey("delivery_person_account"),
                  itemCount: _tasks.length,
                  separatorBuilder: (_, i) {
                    if (i == -1) {
                      return const SizedBox();
                    }
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Divider(),
                    );
                  },
                  itemBuilder: (_, i) {
                    return ListTile(
                      key: ValueKey("delivery_person_item_${i}_account"),
                      title: Text(
                        _tasks[i]['title'].toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 16,
                      ),
                      onTap: () {
                        
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
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
                  'Delivery Person Fullname',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700, color: Colors.black),
                  overflow: TextOverflow.fade,
                ),
                verticalSpaceSmall,
                const Text(
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