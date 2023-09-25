import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/model/product.dart';
import 'package:flutter/material.dart';

class SingleProductCard extends StatelessWidget {
  const SingleProductCard({
    super.key, required this.product, required this.press,
  });

  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: GestureDetector(
        onTap: press,
        child: Container(
          width: 170,
          height: 225,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3))
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      product.images[0],
                      height: 110,
                    ),
                  ),
                ),
                Text(
                  product.title,
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  product.description,
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${product.price} FCFA",
                      style: TextStyle(
                          fontSize: 17,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      product.isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                      size: 22,
                      color: kPrimaryColor,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
