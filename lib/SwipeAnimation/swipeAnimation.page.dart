import "package:flutter/material.dart";
import "./animation.container.dart";
import "./item.dart";

class SwipeAnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimationContainer(
        child: Item(),
      ),
    );
  }
}
