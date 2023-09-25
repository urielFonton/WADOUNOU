
import 'package:digitalis_restaurant_app/module/cart/cart_screen.dart';
import 'package:digitalis_restaurant_app/module/create_restaurant/create_restaurant_page.dart';
import 'package:digitalis_restaurant_app/module/screens/login/login_page.dart';
import 'package:digitalis_restaurant_app/module/screens/signup/sign_up_page.dart';
import 'package:digitalis_restaurant_app/module/start/presentation/landing/presentation/landing_screen.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/home_screen.dart';
import 'package:digitalis_restaurant_app/module/start/restaurant_widgets/restaurant_body.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/item_details_page.dart';
import 'package:digitalis_restaurant_app/module/start/presentation/onBoarding_screen/on_boarding_screen.dart';
import 'package:digitalis_restaurant_app/module/start/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  LandingScreen.routeName: (context) => const LandingScreen(),
  ItemDetailsPage.routeName: (context) => const ItemDetailsPage(),
  CartPage.routeName: (context) => const CartPage(),
  RestaurantBody.routeName: (context) => const RestaurantBody(),
  LoginPage.routeName: (context) => const LoginPage(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CreateRestaurant.routeName: (context) => const CreateRestaurant(),
};
