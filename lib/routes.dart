import "package:flutter/material.dart";
import "./home.page.dart";
import "./CardsPileExperiment/cardsPile.page.dart";
import "./SwipeAnimationExperiment/swipeAnimation.page.dart";

Map<String, WidgetBuilder> routes = {
  "/": (BuildContext context) => HomePage(),
  "/cardsPile": (BuildContext context) => CardsPilePage(),
  "/swipeAnimation": (BuildContext context) => SwipeAnimationPage(),
};
