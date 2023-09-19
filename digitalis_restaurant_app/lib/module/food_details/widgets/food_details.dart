import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/model/food.dart';
import 'package:digitalis_restaurant_app/module/food_details/widgets/food_quantity.dart';
import 'package:flutter/material.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key, required this.food});

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      color: kBackground,
      child: Column(
        children: [
          Text(
            food.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(
                  Icons.access_time_outlined, Colors.blue, food.waitTime),
              _buildIconText(
                  Icons.star_outline, Colors.amber, food.score.toString()),
              _buildIconText(
                  Icons.local_fire_department_outlined, Colors.red, food.cal),
            ],
          ),
          const SizedBox(height: 30),
          FoodQuantity(food: food),
          const SizedBox(height: 30),
          const Row(
            children: [
              Text(
                'Ingredients',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            food.ingredients[index].values.first,
                            width: 52,
                          ),
                          Text(food.ingredients[index].keys.first),
                        ],
                      ),
                    ),
                separatorBuilder: (_, index) => const SizedBox(width: 15),
                itemCount: food.ingredients.length),
          ),
          const SizedBox(height: 30),
          const Row(
            children: [
              Text(
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Text(
            food.about,
            style: const TextStyle(
              wordSpacing: 1.2,
              height: 1.5,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
