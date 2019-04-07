import "package:flutter/material.dart";
import "./item.dart";

class CardsPilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Item(),
      ),
    );
  }
}
