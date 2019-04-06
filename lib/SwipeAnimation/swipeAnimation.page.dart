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
          Function animateForward,
          double delta,
        }) {
          return ItemContainer(
            animateForward: animateForward,
            child: () => Item(),
            delta: delta,
          );
        },
      ),
    );
  }
}
