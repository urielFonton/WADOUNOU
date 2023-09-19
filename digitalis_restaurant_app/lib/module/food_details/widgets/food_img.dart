import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/model/food.dart';
import 'package:flutter/material.dart';

class FoodImg extends StatelessWidget {
  const FoodImg({super.key, required this.food});

  final Food food;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
           Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: kBackground,
                    ),
                  ))
            ],
          ),
          Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.all(15),
                width: 250,
                height: 250,
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    offset: const Offset(-1, 10),
                    blurRadius: 10,
                  )
                ]),
                child: Image.asset(food.imgUrl, fit: BoxFit.cover),
              ))
        ],
      ),
    );
  }
}