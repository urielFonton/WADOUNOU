import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/customListTileWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              accountName: Text(
                "Uriel",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "urielous369@gmail.com",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/avatar.jpg"),
              ),
            ),
          ),
          CustomListTileWidget(
            text: 'Accueil',
            iconData: CupertinoIcons.home,
            press: () {},
          ),
          CustomListTileWidget(
            text: 'Mon Profil',
            iconData: CupertinoIcons.person,
            press: () {},
          ),
          CustomListTileWidget(
            text: 'Mes Commandes',
            iconData: CupertinoIcons.cart_fill,
            press: () {},
          ),
          CustomListTileWidget(
            text: 'Mes Favoris',
            iconData: CupertinoIcons.heart_fill,
            press: () {},
          ),
          CustomListTileWidget(
            text: 'Paramètres',
            iconData: CupertinoIcons.settings,
            press: () {},
          ),
          CustomListTileWidget(
            text: 'Se déconnecter',
            iconData: Icons.logout_outlined,
            press: () {},
          ),
        ],
      ),
    );
  }
}
