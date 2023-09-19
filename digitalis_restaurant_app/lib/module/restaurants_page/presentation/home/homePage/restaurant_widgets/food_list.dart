import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/model/restaurant.dart';
import 'package:flutter/material.dart';
class FoodList extends StatelessWidget {
  const FoodList({super.key, required this.selected, required this.callBack, required this.restaurant});

  final int selected;
  final Function callBack;
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => callBack(index),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selected == index ? kPrimaryColor : Colors.white
            ),
            child: Text(
              category[index].toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
       separatorBuilder: (_, context) => SizedBox(width: 20,),
        itemCount: category.length,
        ));
  }
}