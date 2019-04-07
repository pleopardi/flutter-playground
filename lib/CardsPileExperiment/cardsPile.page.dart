import "package:flutter/material.dart";
import "./item.dart";

class CardsPilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Positioned(
              bottom: 50.0,
              child: Item(
                color: Colors.blue,
                height: 120.0,
                width: 160.0,
              ),
            ),
            Positioned(
              bottom: 25.0,
              child: Item(
                color: Colors.green,
                height: 135.0,
                width: 180.0,
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: GestureDetector(
                onTap: () {
                  print("Tap");
                },
                child: Item(
                  color: Colors.red,
                  height: 150.0,
                  width: 200.0,
                ),
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
