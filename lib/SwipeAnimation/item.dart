import "package:flutter/material.dart";

class Item extends StatelessWidget {
  final double _cardHeight = 200.0;
  final double _cardWidth = 200.0;
  @required
  final double delta;
  @required
  final Function handleTap;

  Item({this.delta, this.handleTap});

  @override
  Widget build(BuildContext context) {
    final _pageSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: handleTap,
      child: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              left: _pageSize.width / 2 - _cardWidth / 2 - delta,
              top: _pageSize.height / 2 - _cardHeight / 2 - delta / 3,
              child: Container(
                color: Colors.green,
                height: _cardHeight,
                width: _cardWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
