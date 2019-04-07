import "./data.dart";
import "package:flutter/material.dart";

MaterialColor getItemColor(int index) {
  return itemsColors[index % itemsColors.length];
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
