import "package:flutter/material.dart";

class ItemContainer extends StatelessWidget {
  final double _cardHeight = 200.0;
  final double _cardWidth = 200.0;

  @required
  final Function animateForward;
  @required
  final Function child;
  @required
  final double delta;

  ItemContainer({
    this.animateForward,
    this.child,
    this.delta,
  });

  @override
  Widget build(BuildContext context) {
    final _pageSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: animateForward,
      child: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              child: child(),
              left: _pageSize.width / 2 - _cardWidth / 2 - delta,
              top: _pageSize.height / 2 - _cardHeight / 2 - delta / 3,
            ),
          ],
        ),
      ),
    );
  }
}
