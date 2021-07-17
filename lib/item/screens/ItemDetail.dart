import 'package:cp_rest_app/widgets/MenuContainer.dart';
import 'package:cp_rest_app/widgets/Widgets.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail();

  @override
  Widget build(BuildContext context) {
    final RouteArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xf32e3337),
      appBar: AppBar(
        backgroundColor: Color(0xf32e3337),
        title: Text('${args.name}'),
      ),
      body: ListView.builder(
          itemCount: args.items.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemCardHorizontal(
              image: args.items[index].image,
              name: args.items[index].name,
              description: args.items[index].description,
              price: args.items[index].price,
            );
          }),
    );
  }
}
