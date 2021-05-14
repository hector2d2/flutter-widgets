import 'dart:math';

import 'package:flutter/material.dart';

Color getColorStyle() {
  List<Color> colors = [
    Color(0xff6989F5),
    Color(0xff906EF5),
    Color(0xff66A9F2),
    Color(0xff536CF6),
    Color(0xffF2D572),
    Color(0xffE06AA3),
    Color(0xff317183),
    Color(0xff46997D),
    Color(0xff6989F5),
    Color(0xff906EF5),
    Color(0xff66A9F2),
    Color(0xff536CF6),
    Color(0xffF2D572),
    Color(0xffE06AA3),
    Color(0xff317183),
    Color(0xff46997D),
    Color(0xff6989F5),
    Color(0xff906EF5),
    Color(0xff66A9F2),
    Color(0xff536CF6),
    Color(0xffF2D572),
    Color(0xffE06AA3),
    Color(0xff317183),
    Color(0xff46997D),
  ];

  return colors[Random().nextInt(colors.length)];
}
