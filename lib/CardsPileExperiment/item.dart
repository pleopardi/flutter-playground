import "package:flutter/material.dart";
import "./data.dart";

class Item extends StatelessWidget {
  final MaterialColor color;
  final String text;

  Item(ItemData itemData)
      : color = itemData.color,
        text = itemData.text;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Container(
        color: color,
        height: 200.0,
        width: 300.0,
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
