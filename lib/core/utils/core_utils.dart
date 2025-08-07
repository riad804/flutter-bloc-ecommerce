import 'package:bloc_ecommerce/core/extensions/context_extension.dart';
import 'package:flutter/widgets.dart';

abstract class CoreUtils {
  const CoreUtils();

  static Color adaptiveColour(
    BuildContext context, {
    required Color lightModeColor,
    required Color darkModeColor,
  }) {
    return context.isDarkMode ? darkModeColor : lightModeColors;
  }
}
