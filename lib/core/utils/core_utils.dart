import 'dart:ui';

import 'package:flutter/widgets.dart';

abstract class CoreUtils {
  const CoreUtils();

  static Color adaptiveColour(
    BuildContext context, {
    required Color lightModeColor,
    required Color darkModeColor,
  }) {
    return MediaQuery.platformBrightnessOf(context) == Brightness.dark
        ? darkModeColor
        : lightModeColor;
  }
}
