import 'package:flutter/material.dart';

extension StringExt on String {
  ThemeMode get toThemeMode {
    return switch (toLowerCase()) {
      'system' => ThemeMode.system,
      'light' => ThemeMode.light,
      'dark' => ThemeMode.dark,
      _ => ThemeMode.system, // Default case
    };
  }
}
