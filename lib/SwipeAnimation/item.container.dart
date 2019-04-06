import "dart:core";
import "package:flutter/material.dart";

class ItemContainer extends StatefulWidget {
  @required
  final Function animate;
  @required
  final Function child;
  @required
  final double delta;
  @required
  final Function setTweenBegin;
  @required
  final Function setTweenEnd;

  ItemContainer({
    this.animate,
    this.child,
    this.delta,
    this.setTweenBegin,
    this.setTweenEnd,
  });

  @override
  _ItemContainerState createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  final double _cardHeight = 200.0;
  final double _cardWidth = 200.0;
  double _dx = 0.0;
  double _dy = 0.0;

  void handlePanEnd(DragEndDetails details) {
    // Move right
    if (_dx > _cardWidth / 3) {
      widget.setTweenBegin(0.0);
      widget.setTweenEnd(500.0);
      widget.animate();

      return;
    }

    // Move left
    if (_dx < -_cardWidth / 3) {
      widget.setTweenBegin(0.0);
      widget.setTweenEnd(-500.0);
      widget.animate();

      return;
    }

    setState(() {
      _dx = 0;
      _dy = 0;
    });
  }

  void handlePanStart(DragStartDetails details) {}

  void handlePanUpdate(DragUpdateDetails details) {
    setState(() {
      _dx = _dx + details.delta.dx;
      _dy = _dy + details.delta.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _pageSize = MediaQuery.of(context).size;

    return GestureDetector(
      onPanEnd: handlePanEnd,
      onPanUpdate: handlePanUpdate,
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              child: widget.child(),
              left: _pageSize.width / 2 - _cardWidth / 2 + _dx + widget.delta,
              top: _pageSize.height / 2 -
                  _cardHeight / 2 +
                  -widget.delta.abs() / 3 +
                  _dy,
            ),
          ],
        ),
      ),
    );
  }
}
