import "package:flutter/material.dart";
import "./home.page.dart";
import "./CardsPileExperiment/cardsPile.page.dart";
import "./DismissibleItemsListExperiment/dismissibleItemsList.page.dart";
import "./GeocodingExperiment/geocoding.page.dart";
import "./SwipeAnimationExperiment/swipeAnimation.page.dart";

Function route(Widget page) {
  return (BuildContext context) => page;
}

Map<String, WidgetBuilder> routes = {
  "/": route(HomePage()),
  "/cardsPile": route(CardsPilePage()),
  "/dismissibleItemsList": route(DismissibleItemsListPage()),
  "/geocoding": route(GeocodingPage()),
  "/swipeAnimation": route(SwipeAnimationPage()),
};
