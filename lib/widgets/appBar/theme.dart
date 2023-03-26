import 'package:flutter/material.dart';
import 'package:food_app/theme/constants.dart';

const appbartheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    titleSpacing: 24,
    scrolledUnderElevation: 2,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(appBarCircularRadius),
    )));
