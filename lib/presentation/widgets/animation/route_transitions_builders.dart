import 'package:flutter/material.dart';

class RouteTransitionsBuilders {
  const RouteTransitionsBuilders._();

  static const RouteTransitionsBuilder opacity = _opacity;

  static Widget _opacity(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Opacity(
      opacity: animation.value,
      child: child,
    );
  }
}
