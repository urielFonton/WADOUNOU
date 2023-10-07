import 'package:carousel_slider/carousel_slider.dart';
import 'package:digitalis_restaurant_app/core/model/arguments/restaurant_detail_arguments.dart';
import 'package:digitalis_restaurant_app/core/model/product.dart';
import 'package:digitalis_restaurant_app/core/model/restaurant.dart';
import 'package:digitalis_restaurant_app/core/utils/size_config.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/single_restaurant_card.dart';
import 'package:digitalis_restaurant_app/module/start/restaurant_widgets/restaurant_body.dart';
import 'package:flutter/material.dart';

class PopularRestaurantWidget extends StatelessWidget {
  const PopularRestaurantWidget({super.key});

    @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: SizeConfig.screenHeight * 0.25,  // Hauteur de votre carousel
        enableInfiniteScroll: true,  // Faites défiler en boucle
        initialPage: 0,  // Page initiale
        viewportFraction: 0.95,
        enlargeCenterPage: true,  // Agrandir la page au centre
        autoPlay: true,  // Lecture automatique
        autoPlayInterval: Duration(seconds: 5),  // Intervalle de lecture automatique
      ),
      items: demoRestaurant.map((restaurant) {
        return SingleRestaurantCard(
          restaurant: restaurant,
          press: () {
            Navigator.pushNamed(
              context,
              RestaurantBody.routeName,
              arguments: RestaurantDetailArgument(restaurant: restaurant),
            );
          },
        );
      }).toList(),
    );
  }}

   