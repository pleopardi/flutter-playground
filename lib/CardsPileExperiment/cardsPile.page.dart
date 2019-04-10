import "package:flutter/material.dart";
import "./item.dart";
import "./helpers.dart";
import "../SwipeAnimationExperiment/SwipeAnimation/swipeAnimation.dart";

class CardsPilePage extends StatelessWidget {
  List<Widget> generateItemsPile(int count, double pageWidth) {
    final itemsData = generateItemsData(
      count: count,
      deltaBottom: 20.0,
      deltaHeight: 10.0,
      deltaWidth: 15.0,
      initialHeight: 200.0,
      initialWidth: 300.0,
    );

    List<Widget> itemsPile = List<Widget>.generate(count, (int index) {
      final itemData = itemsData[index];

      if (index == 0) {
        print("Width: ${itemData.width}");
        print("Page width: $pageWidth");
        print("Left: ${pageWidth / 2 - itemData.width / 2}");

        return SwipeAnimation(
          bottom: itemData.bottom,
          handleDismiss: (_) => print("Dismiss"),
          handleSave: (_) => print("Save"),
          left: (pageWidth - itemData.width) / 2,
          renderChild: () => Item(
                color: itemData.color,
                height: itemData.height,
                text: itemData.text,
                width: itemData.width,
              ),
        );
      }

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

    itemsPile.add(Container(
      height: 600,
      width: pageWidth,
    ));

    return itemsPile.reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    final double _pageWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: generateItemsPile(10, _pageWidth),
        ),
      ),
    );
  }
}
