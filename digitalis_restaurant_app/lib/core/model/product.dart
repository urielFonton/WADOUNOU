
class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final double rating, price;
  final bool isFavorite, isPopular;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    this.rating = 0.0,
    required this.price,
    this.isFavorite = false,
    this.isPopular = false,
  });
}

// our demo product
List<Product> demoProduct = [
  Product(
    id: 1,
    title: "Hot Biryani",
    description: "Taste out hot Biryani",
    images: ["assets/images/biryani.png"],
    price: 1500,
    rating: 4.5,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    title: "Hot Burger",
    description: "Taste out hot Burger",
    images: ["assets/images/burger.png"],
    price: 500,
    rating: 3.0,
    isFavorite: false,
    isPopular: true,
  ),
  Product(
    id: 3,
    title: "Hot Pizza",
    description: "Taste out hot Pizza",
    images: ["assets/images/pizza.png"],
    price: 5000,
    rating: 5.0,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    title: "Ice Drink",
    description: "Taste out ice drink",
    images: ["assets/images/drink.png"],
    price: 250,
    rating: 2.0,
    isFavorite: false,
    isPopular: false,
  ),
];
