import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/model/restaurant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleRestaurantCard extends StatelessWidget {
  const SingleRestaurantCard({
    super.key, required this.press, required this.restaurant,
  });

  final Restaurant restaurant;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: press,
        child: Container(
          width: 380,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: const Offset(0, 3)),
              ]),
          child: Row(children: [
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  restaurant.imageUrl[0],
                  height: 120,
                  width: 150,
                ),
              ),
            ),
            SizedBox(
              width: 190,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    restaurant.nom,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold,),
                  ),
                  Text(
                    restaurant.description,
                    style: TextStyle(
                        fontSize: 16,
                         color: Colors.grey.shade500,
                         fontStyle: FontStyle.italic,
                         fontWeight: FontWeight.w400
                        ),
                  ),
                  SizedBox(height: 10,),
                  Row(children: [
                    Icon(Icons.star_outline, color: kYellowColor,),
                    Text("${restaurant.note}", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 15,)
                  ],)
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 10), child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                       restaurant.isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: Colors.red.withOpacity(0.9),
                        size: 26,
                      ),
                    ],
                  ),)
          ]),
        ),
      ),
    );
  }
}