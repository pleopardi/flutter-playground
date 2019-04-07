import "package:flutter/material.dart";
import "./swipeAnimation.dart";
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
      body: swipeAnimation(
        handleDismiss: handleDismiss,
        handleSave: handleSave,
        renderChild: () => Item(),
      ),
    );
  }
}
