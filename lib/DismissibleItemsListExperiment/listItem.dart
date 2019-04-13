import "package:flutter/material.dart";

class ListItem extends StatelessWidget {
  final String description;
  @required
  final String title;

  ListItem(itemData)
      : description = itemData.description ?? "",
        title = itemData.title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
    );
  }
}
