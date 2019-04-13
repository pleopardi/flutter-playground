import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/cardsPile");
              },
              title: Text("Cards' Pile"),
              trailing: Icon(
                Icons.arrow_forward,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/dismissibleItemsList");
              },
              title: Text("Dismissible Items List"),
              trailing: Icon(
                Icons.arrow_forward,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/geocoding");
              },
              title: Text("Geocoding"),
              trailing: Icon(
                Icons.arrow_forward,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/swipeAnimation");
              },
              title: Text("Swipe Animation"),
              trailing: Icon(
                Icons.arrow_forward,
              ),
            )
          ],
        ),
      ),
    );
  }
}
