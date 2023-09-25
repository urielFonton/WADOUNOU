import 'package:digitalis_restaurant_app/module/create_restaurant/widgets/create_restaurant_background_image.dart';
import 'package:digitalis_restaurant_app/module/create_restaurant/widgets/create_restaurant_form.dart';
import 'package:flutter/material.dart';

class CreateRestaurant extends StatelessWidget {
  const CreateRestaurant({super.key});

  static String routeName = '/restaurant_page';

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CreateRestaurantBackgroundImage(),
        Scaffold(
        body: CreateRestaurantForm(),)
      ],
      );
  }
}