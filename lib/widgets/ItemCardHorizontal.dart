import 'package:cp_rest_app/Constants.dart';
import 'package:flutter/material.dart';

class ItemCardHorizontal extends StatelessWidget {
  final String name;
  final String image;
  final int price;
  final String description;

  ItemCardHorizontal({this.name, this.image, this.price, this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        child: FittedBox(
          child: Material(
            color: Colors.white,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(20.0),
            shadowColor: Color(0x802196f3),
            child: Row(
              children: [
                Container(
                  width: 250,
                  height: 250,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: kBoldTextStyle,
                        ),
                        SizedBox(height: 3),
                        Text(
                          description,
                          style: kTextStyle,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '$price' + ' birr',
                          style: kTextStyle,
                        ),
                      ]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 250,
                  height: 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                      alignment: Alignment.topRight,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
