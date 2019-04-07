import "dart:math";
import "package:flutter/material.dart";

List<MaterialColor> itemsColors = [
  Colors.blue,
  Colors.red,
  Colors.orange,
  Colors.green,
  Colors.purple,
];

MaterialColor getItemColor(int index) {
  return itemsColors[index % itemsColors.length];
}

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

List<ItemData> generateItemsData({
  @required int count,
  @required double deltaBottom,
  @required double initialHeight,
  @required double initialWidth,
  double deltaHeight,
  double deltaWidth,
}) {
  final double actualDeltaHeight = deltaHeight ?? initialHeight / 10;
  final double actualDeltaWidth = deltaWidth ?? initialWidth / 10;

  return List<ItemData>.generate(count, (int index) {
    return ItemData(
      bottom: index * deltaBottom,
      color: getItemColor(index),
      height: initialHeight - index * actualDeltaHeight,
      text: "Item ${index + 1}",
      width: initialWidth - index * actualDeltaWidth,
    );
  });
}

List<ItemData> itemsData = generateItemsData(
  count: 5,
  deltaBottom: 20.0,
  initialHeight: 150.0,
  initialWidth: 200.0,
  deltaHeight: 15.0,
  deltaWidth: 20.0,
);
