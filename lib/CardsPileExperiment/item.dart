import "package:flutter/material.dart";

class Item extends StatelessWidget {
  final MaterialColor color;
  final String text;

  Item({
    this.color = Colors.red,
    this.text = "Item",
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Container(
        color: color,
        height: 200.0,
        width: 200.0,
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
