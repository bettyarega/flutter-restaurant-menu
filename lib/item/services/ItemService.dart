import 'package:cp_rest_app/category/models/Category.dart';
import 'package:cp_rest_app/item/models/Item.dart';

class ItemService {
  static List<Item> getItems() {
    return [
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
    ];
  }
}
