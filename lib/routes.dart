import "package:flutter/material.dart";
import "./home.page.dart";
import "./SwipeAnimation/swipeAnimation.page.dart";

Map<String, WidgetBuilder> routes = {
  "/": (BuildContext context) => HomePage(),
  "/swipeAnimation": (BuildContext context) => SwipeAnimationPage(),
};
