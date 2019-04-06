import "package:flutter/material.dart";

class AnimationContainer extends StatefulWidget {
  final Function child;

  AnimationContainer({this.child});

  @override
  _AnimationContainerState createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;
  Animation _curve;
  Tween<double> _tween;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _tween = Tween<double>(
      begin: 0.0,
      end: 1.0,
    );

    _animation = _tween.animate(_curve)
      ..addListener(() {
        setState(() {});
      });
  }

  void _setTweenBegin(double begin) {
    _tween.begin = begin;
  }

  void _setTweenEnd(double end) {
    _tween.end = end;
  }

  void _animate() {
    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child(
      animate: _animate,
      animationValue: _animation.value,
      setTweenBegin: _setTweenBegin,
      setTweenEnd: _setTweenEnd,
    );
  }
}
