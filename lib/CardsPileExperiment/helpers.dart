import "package:flutter/material.dart";
import "./data.dart";

MaterialColor getItemColor(int index) {
  return itemsColors[index % itemsColors.length];
}

List<ItemData> generateItemsData(int count) {
  return List<ItemData>.generate(count, (int index) {
    return ItemData(
      color: getItemColor(index),
      text: "Item ${index + 1}",
    );
  });
}

List<ItemPosition> generateItemsPositions({
  @required int count,
  @required double deltaBottom,
  double deltaHeight,
  double deltaWidth,
  @required double initialHeight,
  @required double initialWidth,
}) {
  final double actualDeltaHeight = deltaHeight ?? initialHeight / 10;
  final double actualDeltaWidth = deltaWidth ?? initialWidth / 10;

  return List<ItemPosition>.generate(count, (int index) {
    return ItemPosition(
      bottom: index * deltaBottom,
      height: initialHeight - index * actualDeltaHeight,
      width: initialWidth - index * actualDeltaWidth,
    );
  });
}
