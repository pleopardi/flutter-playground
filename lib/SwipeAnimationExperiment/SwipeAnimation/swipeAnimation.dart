import "package:flutter/material.dart";
import "./animation.container.dart";
import "./item.container.dart";

class SwipeAnimation extends StatelessWidget {
  final double animationThreshold;
  final Function handleDismiss;
  final Function handleSave;
  @required
  final Widget item;

  SwipeAnimation({
    this.animationThreshold = 100.0,
    this.handleDismiss,
    this.handleSave,
    this.item,
  });

  @override
  Widget build(BuildContext context) {
    return AnimationContainer(
      child: ({
        @required Function animate,
        @required double animationValue,
        @required Function setTweenBegin,
        @required Function setTweenEnd,
      }) {
        return ItemContainer(
          animate: animate,
          animationThreshold: animationThreshold,
          animationValue: animationValue,
          child: item,
          handleDismiss: handleDismiss,
          handleSave: handleSave,
          setTweenBegin: setTweenBegin,
          setTweenEnd: setTweenEnd,
        );
      },
    );
  }
}
