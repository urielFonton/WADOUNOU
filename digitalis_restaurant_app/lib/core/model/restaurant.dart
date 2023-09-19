import 'package:digitalis_restaurant_app/core/model/food.dart';

class Restaurant {
  final int id;
  final String nom;
  final String description;
  final String address;
  final List<String> imageUrl;
  final bool isFavorite;
  num note;
  final Map<String, List<Food>> menu;

  Restaurant(
      {required this.id,
      required this.nom,
      required this.description,
      required this.address,
      required this.imageUrl,
      required this.isFavorite,
      required this.note,
      required this.menu});

  static Restaurant generateRestaurant() {
    return Restaurant(
        id: 1,
        nom: "Le Bistro",
        description: "Viens manger, il y a tout",
        address: "Cotonou, Bénin",
        imageUrl: ["assets/images/logo-restaurant.jpg"],
        isFavorite: true,
        menu: {
          "Recommander": Food.generateRecommendFoods(),
          "Populaire": Food.generatePopularFoods(),
          "Noodles": [],
          'Pizza': []
        },
        note: 3.0);
  }
}

List<Restaurant> demoRestaurant = [
  Restaurant(
      id: 1,
      nom: "Le Bistro",
      description: "Viens manger, il y a tout",
      address: "Cotonou, Bénin",
      imageUrl: ["assets/images/logo-restaurant.jpg"],
      isFavorite: true,
      menu: {
        "Recommander": Food.generateRecommendFoods(),
        "Populaire": Food.generatePopularFoods(),
        "Noodles": [],
        'Pizza': []
      },
      note: 3.0),
  Restaurant(
      id: 2,
      nom: "Chef Mascot",
      description: "Un chef pour fait bondir vos papilles",
      address: "Cotonou, Bénin",
      imageUrl: ["assets/images/images (2).jpeg"],
      isFavorite: false,
      menu: {
        "Recommander": Food.generateRecommendFoods(),
        "Populaire": Food.generatePopularFoods(),
        "Noodles": [],
        'Pizza': []
      },
      note: 4.2),
  Restaurant(
      id: 3,
      nom: "Resto Chef",
      description: "Le restaurant du chef",
      address: "Cotonou, Bénin",
      imageUrl: ["assets/images/images.jpeg"],
      isFavorite: true,
      menu: {
        "Recommander": Food.generateRecommendFoods(),
        "Populaire": Food.generatePopularFoods(),
        "Noodles": [],
        'Pizza': []
      },
      note: 3.5),
  Restaurant(
      id: 4,
      nom: "Le Menu",
      description: "Venez déguster notre menu",
      address: "Cotonou, Bénin",
      imageUrl: ["assets/images/images (3).jpeg"],
      isFavorite: true,
      menu: {
        "Recommander": Food.generateRecommendFoods(),
        "Populaire": [], //Food.generatePopularFoods(),
        "Noodles": [],
        'Pizza': []
      },
      note: 4.5),
  Restaurant(
      id: 5,
      nom: "Le Restaurant",
      description: "Tout en un",
      address: "Cotonou, Bénin",
      imageUrl: ["assets/images/téléchargement (1).png"],
      isFavorite: false,
      menu: {
        "Recommander": [], //Food.generateRecommendFoods(),
        "Populaire": Food.generatePopularFoods(),
        "Noodles": [],
        'Pizza': []
      },
      note: 2.4),
];
