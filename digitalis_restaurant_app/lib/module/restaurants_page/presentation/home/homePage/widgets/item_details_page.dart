import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:digitalis_restaurant_app/core/constants/constant.dart';
import 'package:digitalis_restaurant_app/core/model/arguments/product_detail_arguments.dart';
import 'package:digitalis_restaurant_app/module/cart/widgets/item_bottom_navbar.dart';
import 'package:digitalis_restaurant_app/module/restaurants_page/presentation/home/homePage/widgets/custom_back_ios_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ItemDetailsPage extends StatelessWidget {
  const ItemDetailsPage({super.key});

  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailArguments? arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailArguments?;

    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBackIosButton(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  arguments!.product.images[0],
                  height: 300, //width: double.infinity,
                ),
              ),
              Arc(
                edge: Edge.TOP,
                arcType: ArcType.CONVEY,
                height: 30,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RatingBar.builder(
                                initialRating: arguments.product.rating,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding:
                                    const EdgeInsetsDirectional.symmetric(
                                        horizontal: 4),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: kPrimaryColor,
                                ),
                                onRatingUpdate: (index) {},
                              ),
                               Text(
                                "${arguments.product.price} FCFA",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 20,
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${arguments.product.title}",
                                  style: const TextStyle(
                                      fontSize: 26, fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  width: 90,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        CupertinoIcons.minus,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        CupertinoIcons.plus,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Text(
                            "${arguments.product.description}",
                            style: const TextStyle(fontSize: 16),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Temps de Livraison : ",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.justify,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    child: Icon(
                                      CupertinoIcons.clock,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Text(
                                    "30 minutes ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}


