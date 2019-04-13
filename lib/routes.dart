import "package:flutter/material.dart";
import "./home.page.dart";
import "./CardsPileExperiment/cardsPile.page.dart";
import "./DismissibleItemsListExperiment/dismissibleItemsList.page.dart";
import "./GeocodingExperiment/geocoding.page.dart";
import "./SwipeAnimationExperiment/swipeAnimation.page.dart";

Map<String, WidgetBuilder> routes = {
  "/": (BuildContext context) => HomePage(),
  "/cardsPile": (BuildContext context) => CardsPilePage(),
  "/dismissibleItemsList": (BuildContext context) => DismissibleItemsListPage(),
  "/geocoding": (BuildContext context) => GeocodingPage(),
  "/swipeAnimation": (BuildContext context) => SwipeAnimationPage(),
};
