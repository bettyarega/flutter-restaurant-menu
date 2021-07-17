import 'package:cp_rest_app/category/models/Category.dart';
import 'package:cp_rest_app/item/models/Item.dart';

class CategoryService {
  static List<Category> getCategories() {
    return [
      Category(name: 'lunch', items: [
        Item(
          name: 'burger',
          image: 'assets/images/burger.jpg',
          description: 'Barbecubed beef burger',
          price: 300,
        ),
        Item(
          name: 'pasta',
          image: 'assets/images/pasta.jpg',
          description: 'Roman-Style Spaghetti',
          price: 250,
        ),
        Item(
          name: 'pizza',
          image: 'assets/images/pizza.jpg',
          description: 'california-style pizza',
          price: 150,
        ),
        Item(
          name: 'pasta',
          image: 'assets/images/pasta.jpg',
          description: 'Roman-Style Spaghetti',
          price: 250,
        ),
        Item(
          name: 'pizza',
          image: 'assets/images/pizza.jpg',
          description: 'california-style pizza',
          price: 150,
        )
      ]),
      Category(name: 'dinner', items: [
        Item(
          name: 'burger',
          image: 'assets/images/burger.jpg',
          description: 'Barbecubed beef burger',
          price: 300,
        ),
        Item(
          name: 'pasta',
          image: 'assets/images/pasta.jpg',
          description: 'Roman-Style Spaghetti',
          price: 250,
        ),
        Item(
          name: 'pizza',
          image: 'assets/images/pizza.jpg',
          description: 'california-style pizza',
          price: 150,
        )
      ]),
      Category(name: 'breakfast', items: [
        Item(
          name: 'burger',
          image: 'assets/images/burger.jpg',
          description: 'Barbecubed beef burger',
          price: 300,
        ),
        Item(
          name: 'pasta',
          image: 'assets/images/pasta.jpg',
          description: 'Roman-Style Spaghetti',
          price: 250,
        ),
        Item(
          name: 'pizza',
          image: 'assets/images/pizza.jpg',
          description: 'california-style pizza',
          price: 150,
        )
      ]),
      Category(name: 'brunch', items: [
        Item(
          name: 'burger',
          image: 'assets/images/burger.jpg',
          description: 'Barbecubed beef burger',
          price: 300,
        ),
        Item(
          name: 'pasta',
          image: 'assets/images/pasta.jpg',
          description: 'Roman-Style Spaghetti',
          price: 250,
        ),
        Item(
          name: 'pizza',
          image: 'assets/images/pizza.jpg',
          description: 'california-style pizza',
          price: 150,
        )
      ]),
      Category(name: 'lunch', items: [
        Item(
          name: 'pasta',
          image: 'assets/images/burger.jpg',
          description: 'pastas description',
          price: 50,
        )
      ]),
      Category(name: 'Specials', items: [
        Item(
          name: 'pasta',
          image: 'assets/images/burger.jpg',
          description: 'pastas description',
          price: 50,
        ),
        Item(
          name: 'pasta',
          image: 'assets/images/burger.jpg',
          description: 'pastas description',
          price: 50,
        ),
        Item(
          name: 'pasta',
          image: 'assets/images/burger.jpg',
          description: 'pastas description',
          price: 50,
        ),
        Item(
          name: 'pasta',
          image: 'assets/images/burger.jpg',
          description: 'pastas description',
          price: 50,
        )
      ]),
    ];
  }

  // static List<Item> getCategoriesByName(String name) {
  //   final categories = CategoryService.getCategories();
  //   List<Item> items;
  //   for (int i; i < categories.length; i++) {
  //     if (categories[i].name == name) {
  //       items = categories[i].items;
  //       break;
  //     }
  //   }
  //   return items;
  // }
}
