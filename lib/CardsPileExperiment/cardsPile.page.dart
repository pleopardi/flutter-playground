import "package:flutter/material.dart";
import "./item.dart";
import "./data.dart";

class CardsPilePage extends StatelessWidget {
  List<Widget> generateItemsPile() {
    List<Widget> itemsPile = List<Widget>.generate(5, (int index) {
      final itemData = itemsData[index];

      return Positioned(
        bottom: itemData.bottom,
        child: Item(
          color: itemData.color,
          height: itemData.height,
          width: itemData.width,
        ),
      );
    });

    itemsPile.add(Container());

    return itemsPile.reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: generateItemsPile(),
        ),
      ),
    );
  }
}
