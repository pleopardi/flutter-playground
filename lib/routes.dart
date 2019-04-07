import "package:flutter/material.dart";
import "./home.page.dart";
import "./SwipeAnimationExperiment/swipeAnimation.page.dart";

Map<String, WidgetBuilder> routes = {
  "/": (BuildContext context) => HomePage(),
  "/swipeAnimation": (BuildContext context) => SwipeAnimationPage(),
};
