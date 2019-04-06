import "package:flutter/material.dart";

class AnimationContainer extends StatefulWidget {
  final Function child;

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
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        }
      });
  }

  void animateForward() {
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child(
      animateForward: animateForward,
      delta: _animation.value,
    );
  }
}
