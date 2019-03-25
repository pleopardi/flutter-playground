import "package:flutter/material.dart";
import "./item.dart";

class AnimationContainer extends StatefulWidget {
  @override
  _AnimationContainerState createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 500).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  void handleTap() {
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Item(delta: _animation.value, handleTap: handleTap);
  }
}
