import "package:flutter/material.dart";
import "./data.dart";
import "./item.dart";
import "./helpers.dart";
import "./cardsPile.container.dart";

final List<ItemData> itemsData = generateItemsData(10);

class CardsPilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CardsPileContainer(
        alignmentFactor: 0.06,
        onCompletion: () {
          print("Completed");
        },
        onDismiss: () {
          print("Dismiss");
        },
        onSave: () {
          print("Save");
        },
        itemsData: itemsData,
        renderItem: (itemData) => Item(itemData),
        scaleFactor: 0.06,
        shownItemsCount: 6,
      ),
    );
  }
}
