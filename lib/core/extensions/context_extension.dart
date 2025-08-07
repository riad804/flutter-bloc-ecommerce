import 'package:bloc_ecommerce/core/common/singletons/cache.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get size => MediaQuery.sizeOf(this);

  double get width => size.width;
  double get height => size.height;

  bool get isDarkMode {
    return switch (Cache.instance.themeModeNotifier.value) {
      ThemeMode.system =>
        MediaQuery.platformBrightnessOf(this) == Brightness.dark,
      ThemeMode.light => false,
      ThemeMode.dark => true,
    };
  }

  bool get isLightMode => !isDarkMode;
}
