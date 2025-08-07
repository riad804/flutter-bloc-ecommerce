import 'package:flutter/material.dart';

extension ThemeModeExt on ThemeMode {
  String get stringValue {
    return switch (this) {
      ThemeMode.system => 'system',
      ThemeMode.light => 'light',
      ThemeMode.dark => 'dark',
    };
  }
}
