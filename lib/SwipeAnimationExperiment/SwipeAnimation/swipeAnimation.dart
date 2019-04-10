import "package:flutter/material.dart";
import "./animation.container.dart";
import "./item.container.dart";

class SwipeAnimation extends StatelessWidget {
  final double animationThreshold;
  final Function handleDismiss;
  final Function handleSave;
  @required
  final Function renderChild;

  SwipeAnimation({
    this.animationThreshold = 100.0,
    this.handleDismiss,
    this.handleSave,
    this.renderChild,
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
          child: renderChild,
          handleDismiss: handleDismiss,
          handleSave: handleSave,
          setTweenBegin: setTweenBegin,
          setTweenEnd: setTweenEnd,
        );
      },
    );
  }
}
