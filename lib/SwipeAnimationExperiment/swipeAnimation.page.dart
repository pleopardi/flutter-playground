import "package:flutter/material.dart";
import "./SwipeAnimation/swipeAnimation.dart";
import "./item.dart";

class SwipeAnimationPage extends StatelessWidget {
  void handleDismiss(_) {
    print("Dismissed");
  }

  void handleSave(_) {
    print("Saved");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SwipeAnimation(
        handleDismiss: handleDismiss,
        handleSave: handleSave,
        item: Item(),
      ),
    );
  }
}
