import 'package:cp_rest_app/category/services/CategoryService.dart';
import 'package:cp_rest_app/category/services/catService.dart';
import 'package:cp_rest_app/item/models/Item.dart';
import 'package:cp_rest_app/widgets/CategoryButton.dart';
import 'package:flutter/material.dart';

class MenuContainer extends StatelessWidget {
  final categories = CategoryService.getCategories();
  @override
  Widget build(BuildContext context) {
    // CatService catService = CatService();
    // final categories = catService.getCategories();
    return Container(
      width: 350,
      height: 350,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black54,
            spreadRadius: 3,
            blurRadius: 1,
            offset: Offset(0, 5))
      ], color: Color(0x612e3337), borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Text(
            'Menu',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return CategoryButton(
                    name: categories[index].name,
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/item_detail',
                        arguments: RouteArguments(
                          items: categories[index].items,
                          name: categories[index].name,
                        ),
                      );
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class RouteArguments {
  final List<Item> items;
  final String name;

  RouteArguments({this.items, this.name});
}
