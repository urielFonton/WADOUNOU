import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/model/arguments/restaurant_detail_arguments.dart';
import 'package:digitalis_restaurant_app/module/start/restaurant_widgets/custom_appbar.dart';
import 'package:digitalis_restaurant_app/module/start/restaurant_widgets/food_list.dart';
import 'package:digitalis_restaurant_app/module/start/restaurant_widgets/food_listview.dart';
import 'package:digitalis_restaurant_app/module/start/restaurant_widgets/restaurant_info_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RestaurantBody extends StatefulWidget {
  const RestaurantBody({
    super.key,
  });

  static String routeName = "/restaurant_body";

  @override
  State<RestaurantBody> createState() => _RestaurantBodyState();
}

class _RestaurantBodyState extends State<RestaurantBody> {
  var selected = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final RestaurantDetailArgument? arguments =
        ModalRoute.of(context)?.settings.arguments as RestaurantDetailArgument?;
    return Scaffold(
      backgroundColor: kBackgroundForRestaurant,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            leftIcon: Icons.arrow_back_ios,
            rightIcon: CupertinoIcons.search,
            leftCallback: () => Navigator.of(context).pop(),
          ),
          RestaurantInfoDetails(
            restaurant: arguments!.restaurant,
          ),
          FoodList(
            selected: selected,
            callBack: (int index) {
              setState(() {
                selected = index;
              });
              pageController.jumpToPage(index);
            },
            restaurant: arguments.restaurant,
          ),
          Expanded(
            child: FoodListView(
              selected: selected,
              callBack: (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController: pageController,
              restaurant: arguments.restaurant,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: arguments.restaurant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  width: 8,
                  height: 8,
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                activeDotDecoration: DotDecoration(
                    width: 10,
                    height: 10,
                    color: kBackground,
                    borderRadius: BorderRadius.circular(10),
                    dotBorder: DotBorder(
                      color: kPrimaryColor,
                      padding: 2,
                      width: 2,
                    )),
              ),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          elevation: 2,
          child: Icon(
            Icons.shopping_bag_outlined,
            color: kPrimaryColor,
            size: 30,
          )),
    );
  }
}
