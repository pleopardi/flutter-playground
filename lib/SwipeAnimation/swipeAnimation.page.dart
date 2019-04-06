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
          @required double delta,
          @required Function setTweenBegin,
          @required Function setTweenEnd,
        }) {
          return ItemContainer(
              animate: animate,
              child: () => Item(),
              delta: delta,
              setTweenBegin: setTweenBegin,
              setTweenEnd: setTweenEnd);
        },
      ),
    );
  }
}
