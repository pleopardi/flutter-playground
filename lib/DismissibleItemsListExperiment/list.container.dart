import "package:flutter/material.dart";
import "./list.dart";

class ItemsListContainer extends StatefulWidget {
  @required
  final List<dynamic> _itemsList;

  ItemsListContainer(this._itemsList);

  @override
  _ItemsListContainerState createState() => _ItemsListContainerState();
}

class _ItemsListContainerState extends State<ItemsListContainer> {
  List<String> dismissed = [];
  List<String> saved = [];

  void onDismissed({
    @required DismissDirection direction,
    @required int index,
    @required String title,
  }) {
    if (direction == DismissDirection.startToEnd) {
      setState(() {
        saved.add(title);
        widget._itemsList.removeAt(index);
      });

      return;
    }

    setState(() {
      dismissed.add(title);
      widget._itemsList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ItemsList(
      itemsList: widget._itemsList,
      onDismissed: onDismissed,
    );
  }
}
