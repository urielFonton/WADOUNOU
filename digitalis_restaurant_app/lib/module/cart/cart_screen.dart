import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/model/Cart.dart';
import 'package:digitalis_restaurant_app/module/cart/widgets/cart_bottom_navbar.dart';
import 'package:digitalis_restaurant_app/module/cart/widgets/cart_item_card.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/custom_back_ios_button.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  static String routeName = "/cart_page";

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomBackIosButton(),
            const Padding(
              padding: EdgeInsets.only(left: 10, bottom: 10),
              child: Text(
                "Liste des commandes",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            ...List.generate(
                demoCart.length,
                (index) => Dismissible(
                    key: Key(demoCart[index].product.id.toString()),
                    direction: DismissDirection.endToStart,
                    background: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFE6E6),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          const Spacer(),
                          Icon(
                            CupertinoIcons.trash,
                            color: Colors.red.shade600,
                          )
                        ],
                      ),
                    ),
                    onDismissed: ((direction) {
                      setState(() {
                        demoCart.removeAt(index);
                      });
                    }),
                    child: CartItemCard(cart: demoCart[index]))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Eléments:',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "2",
                              style: TextStyle(fontSize: 20),
                            )
                          ]),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sous Total:',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "6500 FCFA",
                              style: TextStyle(fontSize: 20),
                            )
                          ]),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Livraison:',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "500 FCFA",
                              style: TextStyle(fontSize: 20),
                            )
                          ]),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Total général:',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "7000 FCFA",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green.shade500),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      drawer: const DrawerWidget(),
      bottomNavigationBar: const CartBottomNavBar(),
    );
  }
}
