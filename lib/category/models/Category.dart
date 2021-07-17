import 'package:cp_rest_app/item/models/Item.dart';

class Category {
  String name;
  List<Item> items;

  Category({this.name, this.items});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      name: json['name'],
      items: Item.fromJsonArray(json['items']),
    );
  }
}
