import 'package:digitalis_restaurant_app/core/model/arguments/product_detail_arguments.dart';
import 'package:digitalis_restaurant_app/core/model/product.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/item_details_page.dart';
import 'package:digitalis_restaurant_app/widgets/meal_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularMealItem extends StatelessWidget {
  const PopularMealItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: Row(
        children: [
          //Product Single Card
          ...List.generate(
              demoProduct.length,
              (index) => SingleProductCard(
                  product: demoProduct[index],
                  press: () {
                    Navigator.pushNamed(context, ItemDetailsPage.routeName,
                        arguments: ProductDetailArguments(
                            product: demoProduct[index]));
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetailsPage()));
                  })),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
