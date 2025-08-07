import 'package:bloc_ecommerce/core/common/singletons/cache.dart';
import 'package:bloc_ecommerce/core/extensions/string_extension.dart';
import 'package:bloc_ecommerce/core/extensions/theme_mode_extension.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  const CacheHelper(this._prefs);

  final SharedPreferences _prefs;

  static const _sesssionTokenKey = 'user-session-token';
  static const _userIdKey = 'user-id';
  static const _themeModeKey = 'theme-mode';
  static const _firstTimerKey = 'is-user-first-timer';

  Future<bool> cacheSessionToken(String token) async {
    try {
      final result = await _prefs.setString(_sesssionTokenKey, token);
      Cache.instance.setSessionToken(token);
      return result;
    } catch (_) {
      return false;
    }
  }

  Future<bool> cacheUserId(String userId) async {
    try {
      final result = await _prefs.setString(_userIdKey, userId);
      Cache.instance.setUserId(userId);
      return result;
    } catch (_) {
      return false;
    }
  }

  Future<void> cacheFirstTimer() async {
    await _prefs.setBool(_firstTimerKey, false);
  }

  Future<void> cacheThemeMode(ThemeMode mode) async {
    await _prefs.setString(_themeModeKey, mode.stringValue);
    Cache.instance.setThemeMode(mode);
  }

  String? getSessionToken() {
    final token = _prefs.getString(_sesssionTokenKey);
    if (token case String()) {
      Cache.instance.setSessionToken(token);
    } else {
      debugPrint('getSessionToken: No session token found in cache.');
    }
    return token;
  }

  String? getUserId() {
    final userId = _prefs.getString(_userIdKey);
    if (userId case String()) {
      Cache.instance.setUserId(userId);
    } else {
      debugPrint('getUserId: No user ID found in cache.');
    }
    return userId;
  }

  ThemeMode getThemeMode() {
    final modeString = _prefs.getString(_themeModeKey);
    final mode = modeString?.toThemeMode ?? ThemeMode.system;
    Cache.instance.setThemeMode(mode);
    return mode;
  }

  Future<void> resetSession() async {
    await _prefs.remove(_sesssionTokenKey);
    await _prefs.remove(_userIdKey);
    Cache.instance.resetSession();
  }

  bool isFirstTimer() => _prefs.getBool(_firstTimerKey) ?? true;
}
