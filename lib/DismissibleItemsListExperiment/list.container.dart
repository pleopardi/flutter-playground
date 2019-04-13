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
  @override
  Widget build(BuildContext context) {
    return ItemsList(itemsList: widget._itemsList);
  }
}
