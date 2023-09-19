import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [ 
            //for(int i = 0; i < 10; i++)
            // Single Item
           
            Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Image.asset("assets/images/drink.png", width: 50, height: 50,),
            ),),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Image.asset("assets/images/biryani.png", width: 50, height: 50,),
            ),),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Image.asset("assets/images/burger.png", width: 50, height: 50,),
            ),),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Image.asset("assets/images/pizza.png", width: 50, height: 50,),
            ),),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Image.asset("assets/images/biryani.png", width: 50, height: 50,),
            ),),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Image.asset("assets/images/pizza.png", width: 50, height: 50,),
            ),),
            
          ],
        ),
      ),
    );
  }
}







/* import 'package:digitalis_restaurant_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/food.svg", "text": "Africains"},
      {"icon": "assets/icons/food.svg", "text": "Chinois"},
      {"icon": "assets/icons/food.svg", "text": "Europeens"},
      {"icon": "assets/icons/food.svg", "text": "Italien"},
      {"icon": "assets/icons/dot_option.svg", "text": "More"},
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCard(
                  icon: categories[index]["icon"],
                  text: categories[index]["text"],
                  press: () {}))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.text,
    required this.press,
  });

  // final List<Map<String, dynamic>> categories;

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                    color: const Color(0xFFFFECDF),
                    borderRadius: BorderRadius.circular(10)),
                child: SvgPicture.asset(icon, color: const Color.fromARGB(255, 255, 98, 0),),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
} */