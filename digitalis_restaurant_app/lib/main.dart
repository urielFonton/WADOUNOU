import 'package:digitalis_restaurant_app/core/routing/app_route.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/home_screen.dart';
import 'package:digitalis_restaurant_app/module/start/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final splashScreenPrefs = await SharedPreferences.getInstance();
  final showSplashScreen = splashScreenPrefs.getBool('showSplashScreen') ?? true;

  final onBoardingPrefs = await SharedPreferences.getInstance();
  final showOnboarding = onBoardingPrefs.getBool('showOnboarding') ?? true;

  runApp(MyApp(
      showSplashScreen: showSplashScreen, showOnboarding: showOnboarding));
}

class MyApp extends StatelessWidget {
  const MyApp(
      {super.key,
      required this.showSplashScreen,
      required this.showOnboarding});

  final bool showSplashScreen;
  final bool showOnboarding;

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      title: 'WADOUNOU',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute:
          showSplashScreen ? SplashScreen.routeName : HomeScreen.routeName,
      routes: routes,
    );
  }
}
