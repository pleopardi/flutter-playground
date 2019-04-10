import "dart:core";
import "package:flutter/material.dart";

class ItemContainer extends StatefulWidget {
  @required
  final Function animate;
  @required
  final double
      animationThreshold; // The minimum horizontal dragging, in pixels, to start the swipe animation
  @required
  final double animationValue; // Current animation value
  @required
  final Function child;
  final Function handleDismiss;
  final Function handleSave;
  @required
  final Function setTweenBegin;
  @required
  final Function setTweenEnd;

  ItemContainer({
    this.animate,
    this.animationThreshold,
    this.animationValue,
    this.child,
    this.handleDismiss,
    this.handleSave,
    this.setTweenBegin,
    this.setTweenEnd,
  });

  @override
  _ItemContainerState createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  double _dx = 0.0;
  double _dy = 0.0;

  void handlePanEnd(DragEndDetails details) {
    // Move right
    if (_dx > widget.animationThreshold) {
      widget.setTweenBegin(0.0);
      widget.setTweenEnd(500.0);
      widget.animate().then((void value) {
        if (widget.handleSave != null) {
          widget.handleSave(value);
        }

        // Move back to center
        setState(() {
          _dx = 0;
          _dy = 0;
        });
      });

      return;
    }

    // Move left
    if (_dx < -widget.animationThreshold) {
      widget.setTweenBegin(0.0);
      widget.setTweenEnd(-500.0);
      widget.animate().then((void value) {
        if (widget.handleDismiss != null) {
          widget.handleDismiss(value);
        }

        // Move back to center
        setState(() {
          _dx = 0;
          _dy = 0;
        });
      });

      return;
    }

    // Move back to center
    setState(() {
      _dx = 0;
      _dy = 0;
    });
  }

  void handlePanUpdate(DragUpdateDetails details) {
    setState(() {
      _dx = _dx + details.delta.dx;
      _dy = _dy + details.delta.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Align(
          alignment: Alignment(
            0.0 + (_dx + widget.animationValue) / (constraints.maxWidth / 2),
            0.0 +
                (_dy - widget.animationValue.abs() / 3) /
                    (constraints.maxHeight / 2),
          ),
          child: GestureDetector(
            onPanEnd: handlePanEnd,
            onPanUpdate: handlePanUpdate,
            child: widget.child(),
          ),
        );
      },
    );
  }
}
