import "package:flutter/material.dart";

class ListItem extends StatelessWidget {
  final String route;
  final String title;

  ListItem({this.route, this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      title: Text(title),
      trailing: Icon(
        Icons.arrow_forward,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            ListItem(route: "/cardsPile", title: "Cards' Pile"),
            ListItem(
                route: "/dismissibleItemsList",
                title: "Dismissible Items List"),
            ListItem(route: "/geocoding", title: "Geocoding"),
            ListItem(route: "/swipeAnimation", title: "Swipe Animation"),
          ],
        ),
      ),
    );
  }
}
