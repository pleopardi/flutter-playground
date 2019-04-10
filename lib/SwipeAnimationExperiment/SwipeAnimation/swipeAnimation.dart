import "package:flutter/material.dart";
import "./animation.container.dart";
import "./item.container.dart";

class SwipeAnimation extends StatelessWidget {
  final double animationThreshold;
  @required
  final double bottom;
  final Function handleDismiss;
  final Function handleSave;
  @required
  final double left;
  @required
  final Function renderChild;

  SwipeAnimation({
    this.animationThreshold = 100.0,
    this.bottom,
    this.handleDismiss,
    this.handleSave,
    this.left,
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
          bottom: bottom,
          child: renderChild,
          handleDismiss: handleDismiss,
          handleSave: handleSave,
          left: left,
          setTweenBegin: setTweenBegin,
          setTweenEnd: setTweenEnd,
        );
      },
    );
  }
}
