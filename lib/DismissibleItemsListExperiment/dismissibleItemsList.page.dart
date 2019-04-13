import "package:flutter/material.dart";
import "./helpers.dart";
import "./list.container.dart";

class DismissibleItemsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ItemsListContainer(generateItemsList()),
    );
  }
}
