import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/enums/menu_enums.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedMenu,
  });

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor =  Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -15),
                blurRadius: 20,
                color: const Color(0xFFDADADA).withOpacity(0.15)),
          ]),
      child: SafeArea(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
            icon: SvgPicture.asset("assets/icons/Shop Icon.svg"),
            color: MenuState.home == selectedMenu
                ? kPrimaryColor
                : inActiveIconColor,
          ),
          IconButton(
            
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),color: MenuState.favorites == selectedMenu
                ? kPrimaryColor
                : inActiveIconColor,),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"), color: MenuState.message == selectedMenu
                ? kPrimaryColor
                : inActiveIconColor,),
          IconButton(
              onPressed: () {}, // Navigator.pushNamed(context, ProfileScreen.routeName),
              icon: SvgPicture.asset("assets/icons/User Icon.svg"),color: MenuState.profile == selectedMenu
                ? kPrimaryColor
                : inActiveIconColor,),
        ]),
      ),
    );
  }
}