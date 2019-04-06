import "package:flutter/material.dart";

class ItemContainer extends StatefulWidget {
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
  _ItemContainerState createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  final double _cardHeight = 200.0;
  final double _cardWidth = 200.0;

  @override
  Widget build(BuildContext context) {
    final _pageSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: widget.animateForward,
      child: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              child: widget.child(),
              left: _pageSize.width / 2 - _cardWidth / 2 - widget.delta,
              top: _pageSize.height / 2 - _cardHeight / 2 - widget.delta / 3,
            ),
          ],
        ),
      ),
    );
  }
}
