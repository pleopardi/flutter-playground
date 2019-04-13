import "package:flutter/material.dart";
import "./listItem.dart";

class ItemsList extends StatelessWidget {
  @required
  final List<dynamic> itemsList;

  ItemsList({this.itemsList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemsList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListItem(itemsList[index]);
      },
    );
  }
}
