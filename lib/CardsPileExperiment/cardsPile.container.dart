import "package:flutter/material.dart";
import "../SwipeAnimationExperiment/SwipeAnimation/swipeAnimation.dart";

class CardsPileContainer extends StatefulWidget {
  final double alignmentFactor;
  @required
  final List<dynamic> itemsData;
  final Function onCompletion;
  final Function onDismiss;
  final Function onSave;
  @required
  final Function renderItem;
  final double scaleFactor;
  final int shownItemsCount;

  CardsPileContainer({
    this.alignmentFactor = 0.05,
    this.itemsData,
    this.onCompletion,
    this.onDismiss,
    this.onSave,
    this.renderItem,
    this.scaleFactor = 0.05,
    this.shownItemsCount = 5,
  });

  @override
  _CardsPileContainerState createState() => _CardsPileContainerState();
}

class _CardsPileContainerState extends State<CardsPileContainer> {
  int frontCardIndex = 0;

  List<Widget> generateItemsPile(List<dynamic> currentItemsData) {
    List<Widget> itemsPile = List<Widget>.generate(
      currentItemsData.length,
      (int index) {
        final currentItemData = currentItemsData[index];

        if (index == 0) {
          return SwipeAnimation(
            handleDismiss: (_) {
              setState(() {
                frontCardIndex += 1;
              });

              if (widget.onDismiss != null) {
                widget.onDismiss();
              }
            },
            handleSave: (_) {
              setState(() {
                frontCardIndex += 1;
              });

              if (widget.onSave != null) {
                widget.onSave();
              }
            },
            item: widget.renderItem(currentItemData),
          );
        }

        return Align(
          alignment: Alignment(0, 0 - widget.alignmentFactor * index),
          child: Transform.scale(
            scale: 1 - widget.scaleFactor * index,
            child: widget.renderItem(currentItemData),
          ),
        );
      },
    );

    return itemsPile.reversed.toList();
  }

  List<dynamic> getSublist({
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
    if (frontCardIndex == widget.itemsData.length) {
      if (widget.onCompletion != null) {
        widget.onCompletion();
      }

      return Center(
        child: Text("No cards left!"),
      );
    }

    return Container(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: generateItemsPile(
          getSublist(
            list: widget.itemsData,
            initialIndex: frontCardIndex,
            maxLength: widget.shownItemsCount,
          ),
        ),
      ),
    );
  }
}
