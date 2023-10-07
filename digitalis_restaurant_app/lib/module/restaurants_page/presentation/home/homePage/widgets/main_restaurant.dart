import 'package:digitalis_restaurant_app/core/model/arguments/restaurant_detail_arguments.dart';
import 'package:digitalis_restaurant_app/core/model/product.dart';
import 'package:digitalis_restaurant_app/core/model/restaurant.dart';
import 'package:digitalis_restaurant_app/module/start/restaurant_widgets/restaurant_body.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/single_restaurant_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewestItemWidget extends StatelessWidget {
  const NewestItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Row(
          children: [
            ...List.generate(
                demoProduct.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: SingleRestaurantCard(
                          restaurant: demoRestaurant[index],
                          press: () {
                            Navigator.pushNamed(
                                context, RestaurantBody.routeName,
                                arguments: RestaurantDetailArgument(
                                    restaurant: demoRestaurant[index]));
                          }),
                    )),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
