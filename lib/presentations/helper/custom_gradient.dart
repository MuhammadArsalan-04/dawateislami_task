import 'package:flutter/material.dart';

import '../configs/app_colors.dart';

LinearGradient getGradient(
    {List<Color> gradientColorsList = AppColors.gradientColorList,
    Alignment begin = Alignment.centerLeft,
    Alignment end = Alignment.centerRight,
    List<double>? stops}) {
  return LinearGradient(
      colors: gradientColorsList, begin: begin, end: end, stops: stops,);
}
