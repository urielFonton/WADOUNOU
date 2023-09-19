import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/model/food.dart';
import 'package:digitalis_restaurant_app/module/food_details/widgets/food_details.dart';
import 'package:digitalis_restaurant_app/module/food_details/widgets/food_img.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/restaurant_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.food});

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                leftIcon: Icons.arrow_back_ios,
                rightIcon: Icons.favorite_outline,
                leftCallback: () => Navigator.of(context).pop(),
              ),
              FoodImg(food: food),
              FoodDetails(food: food),
            ],
          ),
        ));
  }
}
