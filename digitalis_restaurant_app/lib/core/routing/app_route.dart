
import 'package:digitalis_restaurant_app/module/account/account_view_page.dart';
import 'package:digitalis_restaurant_app/module/account/add_delivery_person/add_delivery_person_page.dart';
import 'package:digitalis_restaurant_app/module/account/add_meal/add_meal_page.dart';
import 'package:digitalis_restaurant_app/module/account/delivery_list_view/delivery_person_listview_page.dart';
import 'package:digitalis_restaurant_app/module/account/orders/orders_screen.dart';
import 'package:digitalis_restaurant_app/module/account/orders/pending_orders/doned_orders_view_page.dart';
import 'package:digitalis_restaurant_app/module/account/orders/waiting_orders/orders_page_view.dart';
import 'package:digitalis_restaurant_app/module/account/profile/edit_restaurant_info/edit_restaurant_info.dart';
import 'package:digitalis_restaurant_app/module/account/profile/edit_user_profil/edit_profile_page.dart';
import 'package:digitalis_restaurant_app/module/account/profile/profil.dart';
import 'package:digitalis_restaurant_app/module/account/reservations/doned_booking/doned_reservation_view_page.dart';
import 'package:digitalis_restaurant_app/module/account/reservations/reservations_screen.dart';
import 'package:digitalis_restaurant_app/module/account/reservations/waiting_booking/waiting_reservation_page.dart';
import 'package:digitalis_restaurant_app/module/account/subscription/subscription_page.dart';
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
import 'package:digitalis_restaurant_app/widgets/restaurant_created_successfully.dart';
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
  RestaurantCreatedSuccessfully.routeName: (context) => const RestaurantCreatedSuccessfully(),
  AccountViewPage.routeName: (context) => const AccountViewPage(),
  AddMealPage.routeName: (context) => const AddMealPage(),
  AddDeliveryPersonPage.routeName: (context) => const AddDeliveryPersonPage(),
  DeliveryPersonListviewPage.routeName: (context) => const DeliveryPersonListviewPage(),
  OrdersPageView.routeName: (context) => const OrdersPageView(),
  WaitingReservationPage.routeName: (context) => const WaitingReservationPage(),
  DonedOrdersViewPage.routeName: (context) => const DonedOrdersViewPage(),
  DonedReservationViewPage.routeName: (context) => const DonedReservationViewPage(),
  EditProfilePage.routeName: (context) => const EditProfilePage(),
  SubscriptionPage.routeName: (context) => const SubscriptionPage(),
  ReservationsScreens.routeName: (context) => ReservationsScreens(),
  OrdersScreens.routeName: (context) => const OrdersScreens(),
  ProfilePage.routeName: (context) => const ProfilePage(),
  EditRestaurantPage.routeName: (context) => const EditRestaurantPage(),
};
