import "package:flutter/material.dart";
import "./data.dart";
import "./item.dart";
import "./helpers.dart";
import "../SwipeAnimationExperiment/SwipeAnimation/swipeAnimation.dart";

class CardsPilePage extends StatefulWidget {
  @override
  _CardsPilePageState createState() => _CardsPilePageState();
}

class _CardsPilePageState extends State<CardsPilePage> {
  final List<ItemPosition> itemsPositions = generateItemsPositions(
    count: 5,
    deltaBottom: 20.0,
    deltaHeight: 10.0,
    deltaWidth: 15.0,
    initialHeight: 200.0,
    initialWidth: 300.0,
  );

  final List<ItemData> itemsData = generateItemsData(10);

  int firstCardIndex = 0;

  List<Widget> generateItemsPile(
    List<ItemData> items,
    List<ItemPosition> positions,
    double pageWidth,
  ) {
    List<Widget> itemsPile = List<Widget>.generate(items.length, (int index) {
      final itemData = items[index];
      final itemPosition = positions[index];

      if (index == 0) {
        return SwipeAnimation(
          bottom: itemPosition.bottom,
          handleDismiss: (_) {
            setState(() {
              firstCardIndex += 1;
            });
            print("Dismiss");
          },
          handleSave: (_) {
            setState(() {
              firstCardIndex += 1;
            });
            print("Save");
          },
          left: (pageWidth - itemPosition.width) / 2,
          renderChild: () => Item(
                color: itemData.color,
                height: itemPosition.height,
                text: itemData.text,
                width: itemPosition.width,
              ),
        );
      }

      return Positioned(
        bottom: itemPosition.bottom,
        child: Item(
          color: itemData.color,
          height: itemPosition.height,
          text: itemData.text,
          width: itemPosition.width,
        ),
      );
    });

    itemsPile.add(Container(
      height: 600,
      width: pageWidth,
    ));

    return itemsPile.reversed.toList();
  }

  List<ItemData> getSublist({
    @required List<dynamic> list,
    @required int initialIndex,
    @required int maxLength,
  }) {
    final int _leftItems = list.length - initialIndex;

    if (_leftItems == 0) {
      return null;
    }

    if (_leftItems < maxLength) {
      return list.sublist(initialIndex);
    }

    return list.sublist(initialIndex, initialIndex + maxLength);
  }

  @override
  Widget build(BuildContext context) {
    final double _pageWidth = MediaQuery.of(context).size.width;

    if (firstCardIndex == itemsData.length) {
      return Scaffold(
        body: Center(
          child: Text("No cards left!"),
        ),
      );
    }

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: generateItemsPile(
            getSublist(
              list: itemsData,
              initialIndex: firstCardIndex,
              maxLength: 5,
            ),
            itemsPositions,
            _pageWidth,
          ),
        ),
      ),
    );
  }
}
