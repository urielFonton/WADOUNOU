import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/model/restaurant.dart';
import 'package:digitalis_restaurant_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class SingleRestaurantCard extends StatefulWidget {
  SingleRestaurantCard({
    Key? key,
    required this.press,
    required this.restaurant,
  }) : super(key: key);

  final Restaurant restaurant;
  final GestureTapCallback press;

  @override
  _SingleRestaurantCardState createState() =>
      _SingleRestaurantCardState();
}

class _SingleRestaurantCardState
    extends State<SingleRestaurantCard> {
  bool isFavorite = false;

  @override
  List<Restaurant> favoriteRestaurants = [];

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: widget.press,
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
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    widget.restaurant.imageUrl[0],
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
                      widget.restaurant.nom,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.restaurant.description,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade500,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_outline,
                          color: kYellowColor,
                        ),
                        Text(
                          "${widget.restaurant.note}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isFavorite = !isFavorite;
                          if (widget.restaurant.isFavorite) {
                            // Si le restaurant est marqué comme favori, ajoutez-le à la liste des favoris
                            favoriteRestaurants.add(widget.restaurant);
                            
                          } else {
                            // Si le restaurant est désélectionné comme favori, retirez-le de la liste des favoris
                            favoriteRestaurants.remove(widget.restaurant);
                          }
                        });
                      },
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite
                            ? Colors.red.withOpacity(0.9)
                            : Colors.grey,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


