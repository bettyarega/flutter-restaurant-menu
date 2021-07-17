import 'package:cp_rest_app/Constants.dart';
import 'package:cp_rest_app/widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xf32e3337),
        appBar: AppBar(
          backgroundColor: Color(0xf32e3337),
          title: Text('CP Restaurant'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Today\'s Special',
                style: TextStyle(fontSize: 25, color: kTextColor),
              ),
            ),
            Expanded(
                child: ListView(scrollDirection: Axis.vertical, children: [
              CarouselSlider(
                  options: CarouselOptions(
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: [
                    ItemCardHorizontal(
                      name: 'pizza',
                      image: 'assets/images/pizza.jpg',
                      description: 'california-style pizza',
                      price: 150,
                    ),
                    ItemCardHorizontal(
                      name: 'pasta',
                      image: 'assets/images/pasta.jpg',
                      description: 'Roman-Style Spaghetti',
                      price: 250,
                    ),
                    ItemCardHorizontal(
                      name: 'burger',
                      image: 'assets/images/burger.jpg',
                      description: 'Barbecubed beef burger',
                      price: 300,
                    )
                  ])
            ])),
            MenuContainer(),
          ],
        ));
  }
}
