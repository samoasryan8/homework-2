class Product {
  String name;
  String category;
  double price;

  Product({required this.name, required this.category, required this.price});
}

Map<String, double> totalByCategory(List<Product> products) {
  Map<String, double> result = {};

  for (var product in products) {
    result[product.category] = (result[product.category] ?? 0.0) + product.price;
  }

  return result;
}