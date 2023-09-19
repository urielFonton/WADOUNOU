
import 'package:digitalis_restaurant_app/core/utils/size_config.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/categories_widget.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/home_screen_header.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/main_restaurant.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/popular_meals.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(16),
            ),
            const HomeScreenHeader(),
            const Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              "Mets du jour",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
            const CategoriesWidget(),
            
            const Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              "Restaurants",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
            const NewestItemWidget(),
            const Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              "Mets Populaires",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
            const PopularMealItem(),
             const Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              "Autres Mets",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
            const PopularMealItem(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
          ],
        ),
      ),
    );
  }
}