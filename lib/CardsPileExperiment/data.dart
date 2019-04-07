import "package:flutter/material.dart";

List<MaterialColor> itemsColors = [
  Colors.blue,
  Colors.red,
  Colors.orange,
  Colors.green,
  Colors.purple,
];

class ItemData {
  @required
  final double bottom;
  @required
  final MaterialColor color;
  @required
  final double height;
  @required
  final String text;
  @required
  final double width;

  ItemData({
    this.bottom,
    this.color,
    this.height,
    this.text,
    this.width,
  });
}
