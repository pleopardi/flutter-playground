import "package:flutter/material.dart";

class AnimationContainer extends StatefulWidget {
  final Function child;

  AnimationContainer({this.child});

  @override
  _AnimationContainerState createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer>
    with TickerProviderStateMixin {
  Animation _curveLeft;
  Animation<double> _animationLeft;
  AnimationController _controllerLeft;
  Animation _curveRight;
  Animation<double> _animationRight;
  AnimationController _controllerRight;

  @override
  void initState() {
    super.initState();

    _controllerLeft = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _curveLeft = CurvedAnimation(
      parent: _controllerLeft,
      curve: Curves.easeInOut,
    );

    _animationLeft = Tween<double>(begin: 0, end: 500).animate(_curveLeft)
      ..addListener(() {
        setState(() {});
      });

    _controllerRight = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _curveRight = CurvedAnimation(
      parent: _controllerRight,
      curve: Curves.easeInOut,
    );

    _animationRight = Tween<double>(begin: 0, end: 500).animate(_curveRight)
      ..addListener(() {
        setState(() {});
      });
  }

  void _animateLeft() {
    _controllerLeft.forward();
  }

  void _animateRight() {
    _controllerRight.forward();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child(
      animateLeft: _animateLeft,
      animateRight: _animateRight,
      delta: _animationLeft.value - _animationRight.value,
    );
  }
}
