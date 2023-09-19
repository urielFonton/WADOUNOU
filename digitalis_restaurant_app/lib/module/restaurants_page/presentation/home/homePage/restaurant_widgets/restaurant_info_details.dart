import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/model/restaurant.dart';
import 'package:flutter/material.dart';

class RestaurantInfoDetails extends StatelessWidget {
  RestaurantInfoDetails({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                restaurant.nom,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    restaurant.imageUrl[0],
                    width: 80,
                  ))
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${restaurant.description}", style: TextStyle(fontSize: 16),),
              Row(
                children: [
                  Icon(Icons.star_outline, color: kPrimaryColor,),
                  Text('${restaurant.note}', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 15,)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
