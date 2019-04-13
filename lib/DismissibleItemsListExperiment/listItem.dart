import "package:flutter/material.dart";

class ListItem extends StatelessWidget {
  final String description;
  @required
  final int index;
  final Key key;
  @required
  final Function onDismissed;
  @required
  final String title;

  ListItem({this.index, itemData, this.onDismissed})
      : description = itemData.description ?? "",
        key = Key(itemData.title),
        title = itemData.title;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: key,
      background: Container(
        alignment: Alignment.centerLeft,
        color: Colors.green,
        padding: EdgeInsets.only(
          left: 20.0,
        ),
        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
      onDismissed: (DismissDirection direction) {
        onDismissed(
          direction: direction,
          index: index,
          title: title,
        );
      },
      secondaryBackground: Container(
        alignment: Alignment.centerRight,
        color: Colors.red,
        padding: EdgeInsets.only(
          right: 20.0,
        ),
        child: Icon(
          Icons.cancel,
          color: Colors.white,
        ),
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }
}
