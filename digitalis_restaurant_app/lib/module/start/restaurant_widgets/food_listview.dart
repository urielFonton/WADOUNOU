import 'package:digitalis_restaurant_app/core/model/restaurant.dart';
import 'package:digitalis_restaurant_app/module/food_details/details_page.dart';
import 'package:digitalis_restaurant_app/module/start/restaurant_widgets/food_item.dart';
import 'package:flutter/material.dart';

class FoodListView extends StatelessWidget {
  FoodListView(
      {super.key,
      required this.selected,
      required this.callBack,
      required this.pageController,
      required this.restaurant});

  final int selected;
  final Function callBack;
  final PageController pageController;
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: PageView(
          controller: pageController,
          onPageChanged: (index) => callBack(index),
          children: category
              .map((e) => ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage(
                                      food: restaurant
                                          .menu[category[selected]]![index],
                                    )));
                      },
                      child: FoodItem(
                        food: restaurant.menu[category[selected]]![index],
                      ),
                    ),
                    separatorBuilder: (_, index) => const SizedBox(
                      height: 15,
                    ),
                    itemCount: restaurant.menu[category[selected]]!.length,
                  ))
              .toList(),
        ));
  }
}
