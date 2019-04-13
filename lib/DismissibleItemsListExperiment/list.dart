import "package:flutter/material.dart";
import "./listItem.dart";

class ItemsList extends StatelessWidget {
  @required
  final List<dynamic> itemsList;
  @required
  final Function onDismissed;

  ItemsList({this.itemsList, this.onDismissed});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemsList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListItem(
          index: index,
          itemData: itemsList[index],
          onDismissed: onDismissed,
        );
      },
    );
  }
}
