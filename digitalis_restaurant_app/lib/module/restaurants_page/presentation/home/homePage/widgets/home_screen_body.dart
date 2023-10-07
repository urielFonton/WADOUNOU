import 'package:digitalis_restaurant_app/core/model/restaurant.dart';
import 'package:digitalis_restaurant_app/core/utils/size_config.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/favorite_restaurant_widget.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/popular_restaurant.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/home_screen_header.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/popular_meals.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  List<Restaurant> favoriteRestaurants = [];

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
                "Restaurants populaires",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.02,),
            const PopularRestaurantWidget(),
            
            /* const Padding(
              padding: EdgeInsets.only(top: 20, left: 15),
              child: Text(
                "Mes Restaurants Favoris",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ), */
            // Appeler FavoriteRestaurantsWidget avec la liste des restaurants
            FavoriteRestaurantsWidget(allRestaurants: demoRestaurant,),
            
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
