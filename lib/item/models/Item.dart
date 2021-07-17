class Item {
  String name;
  String image;
  int price;
  String description;

  Item({this.name, this.image, this.description, this.price});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(name: json['name'], image: json['image'], price: json['price']);
  }

  static List<Item> fromJsonArray(List<dynamic> jsonArray) {
    List<Item> itemsFrmJson = [];
    jsonArray.forEach((jsonItem) {
      itemsFrmJson.add(Item.fromJson(jsonItem));
    });
    return itemsFrmJson;
  }
}
