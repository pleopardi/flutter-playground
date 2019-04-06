import "package:flutter/material.dart";
import "./animation.container.dart";
import "./item.container.dart";
import "./item.dart";

class SwipeAnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimationContainer(
        child: ({
          @required Function animate,
          @required double animationValue,
          @required Function setTweenBegin,
          @required Function setTweenEnd,
        }) {
          return ItemContainer(
              animate: animate,
              animationValue: animationValue,
              animationThreshold: 100.0,
              child: () => Item(),
              setTweenBegin: setTweenBegin,
              setTweenEnd: setTweenEnd);
        },
      ),
    );
  }
}
