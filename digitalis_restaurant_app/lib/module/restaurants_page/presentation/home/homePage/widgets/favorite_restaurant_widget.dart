import 'package:digitalis_restaurant_app/core/model/restaurant.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/favorite_restaurant_single_card.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/single_restaurant_card.dart';
import 'package:flutter/material.dart';

class FavoriteRestaurantsWidget extends StatefulWidget {
  final List<Restaurant> allRestaurants;

  FavoriteRestaurantsWidget({required this.allRestaurants});

  @override
  _FavoriteRestaurantsWidgetState createState() =>
      _FavoriteRestaurantsWidgetState();
}

class _FavoriteRestaurantsWidgetState extends State<FavoriteRestaurantsWidget> {
  List<Restaurant> favoriteRestaurants = [];
  @override
  Widget build(BuildContext context) {
    // Filtrer les restaurants favoris
    final filteredFavorites = widget.allRestaurants.where((restaurant) {
      return favoriteRestaurants.contains(restaurant);
    }).toList();

    if (filteredFavorites.isEmpty) {
      // Si la liste des favoris est vide, n'affichez rien
      return SizedBox.shrink(); // Retourne un widget vide
    }

    return ListView.builder(
      itemCount: filteredFavorites.length,
      itemBuilder: (context, index) {
        final restaurant = filteredFavorites[index];
        return SingleRestaurantCard(
          restaurant: restaurant,
          press: () {
            // Gérer la navigation ou l'action lorsque vous appuyez sur un restaurant favori
          },
        );
      },
    );
  }
}