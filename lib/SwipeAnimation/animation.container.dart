import "package:flutter/material.dart";
import "./itemWrapper.dart";

class AnimationContainer extends StatefulWidget {
  final Widget child;

  AnimationContainer({this.child});

  @override
  _AnimationContainerState createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer>
    with SingleTickerProviderStateMixin {
  Animation _curve;
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _animation = Tween<double>(begin: 0, end: 500).animate(_curve)
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        }
      });
  }

  void handleTap() {
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        child: widget.child,
        builder: (BuildContext context, Widget child) {
          return ItemWrapper(
            child: child,
            delta: _animation.value,
            handleTap: handleTap,
          );
        });
  }
}
