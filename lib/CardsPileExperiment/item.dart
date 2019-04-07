import "package:flutter/material.dart";

class Item extends StatelessWidget {
  final MaterialColor color;
  final double height;
  final String text;
  final double width;

  Item({
    this.color = Colors.red,
    this.height = 150.0,
    this.text = "Item",
    this.width = 200.0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Container(
        color: color,
        height: height,
        width: width,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
