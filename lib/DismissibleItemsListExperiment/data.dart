import "package:meta/meta.dart";

class ItemData {
  final String description;
  @required
  final String title;

  ItemData({this.description = "", this.title});
}
