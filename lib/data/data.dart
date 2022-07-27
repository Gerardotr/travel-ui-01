import '../models/models.dart';

class Data {
  static List<CategoriesModel> generateCategories() {
    return [
      CategoriesModel(
          1, "assets/images/palmera.png", "Camp", "Camp", "Camp", 99.56),
      CategoriesModel(2, "assets/images/palmera.png", "Mountains", "Mountains",
          "Mountains", 137.56),
      CategoriesModel(
          3, "assets/images/palmera.png", "Beach", "Beach", "Beach", 99.56),
    ];
  }

  static List<CategoriesModel> generateProducts() {
    return [
      CategoriesModel(1, "assets/images/trip.jpg", "Lifestyle", "Men's Shoes",
          "men shoes", 99.56),
      CategoriesModel(2, "assets/images/trip.jpg", "Basketball", "Men's Shoes",
          "men shoes", 137.56),
      CategoriesModel(3, "assets/images/trip.jpg", "Running", "Men's Shoes",
          "men shoes", 99.56),
      CategoriesModel(
          4, "assets/images/trip.jpg", "Rugby", "Men's Shoes", "men shoes", 212.56),
             CategoriesModel(3, "assets/images/trip.jpg", "Running", "Men's Shoes",
          "men shoes", 99.56),
      CategoriesModel(
          4, "assets/images/trip.jpg", "Rugby", "Men's Shoes", "men shoes", 212.56),
    ];
  }
}
