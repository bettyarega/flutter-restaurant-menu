import 'package:cp_rest_app/Constants.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String name;
  final Function onPressed;

  CategoryButton({this.name, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Padding(
        padding: EdgeInsets.all(2.0),
        child: RaisedButton(
          onPressed: onPressed,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Text(name, style: kButtonTextStyle),
        ),
      ),
    );
  }
}
