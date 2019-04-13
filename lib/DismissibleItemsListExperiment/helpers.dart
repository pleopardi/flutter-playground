import "./data.dart";

List<ItemData> generateItemsList([int length = 20]) {
  return List<ItemData>.generate(length, (int index) {
    return ItemData(
      description: "Description for item ${index + 1}",
      title: "Item ${index + 1}",
    );
  });
}
