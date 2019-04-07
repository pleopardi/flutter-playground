import "package:flutter/material.dart";

class Item extends StatelessWidget {
  final double _cardHeight = 200.0;
  final double _cardWidth = 200.0;

  @required
  final Color color;

  Item({this.color = Colors.green});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: _cardHeight,
      width: _cardWidth,
    );
  }
}
