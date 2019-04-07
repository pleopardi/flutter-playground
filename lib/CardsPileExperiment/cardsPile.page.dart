import "package:flutter/material.dart";
import "./item.dart";
import "./helpers.dart";

class CardsPilePage extends StatelessWidget {
  List<Widget> generateItemsPile(int count) {
    final itemsData = generateItemsData(
      count: count,
      deltaBottom: 20.0,
      initialHeight: 200.0,
      initialWidth: 300.0,
      deltaHeight: 10.0,
      deltaWidth: 15.0,
    );

    List<Widget> itemsPile = List<Widget>.generate(count, (int index) {
      final itemData = itemsData[index];

      return Positioned(
        bottom: itemData.bottom,
        child: Item(
          color: itemData.color,
          height: itemData.height,
          text: itemData.text,
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
          children: generateItemsPile(10),
        ),
      ),
    );
  }
}
