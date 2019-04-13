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
  final MaterialColor color;
  @required
  final String text;

  ItemData({
    this.color,
    this.text,
  });
}

class ItemPosition {
  @required
  final double bottom;
  @required
  final double height;
  @required
  final double width;

  ItemPosition({
    this.bottom,
    this.height,
    this.width,
  });
}
