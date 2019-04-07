import "package:flutter/material.dart";
import "./animation.container.dart";
import "./item.container.dart";

Widget swipeAnimation({
  double animationThreshold = 100.0,
  Function handleDismiss,
  Function handleSave,
  @required Function renderChild,
}) {
  return AnimationContainer(
    child: ({
      @required Function animate,
      @required double animationValue,
      @required Function setTweenBegin,
      @required Function setTweenEnd,
    }) {
      return ItemContainer(
        animate: animate,
        animationThreshold: 100.0,
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
