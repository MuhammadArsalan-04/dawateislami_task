import 'package:flutter/material.dart';

class NavigationHelper {
  static pushNamedRoute(BuildContext context, dynamic targetClass , [Object? args]) {
    
    Navigator.of(context).pushNamed(targetClass , arguments: args);
  }

  static pushNamedReplacementRoute(BuildContext context, String targetClass, [Object? args]) {
    Navigator.of(context).pushReplacementNamed(targetClass , arguments: args);
  }
}
