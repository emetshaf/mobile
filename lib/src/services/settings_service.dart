import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
class SettingsService {
  /// Loads the User's preferred ThemeMode from local or remote storage.
  // Future<ThemeMode> themeMode() async => ThemeMode.light;
  late SharedPreferences sharedPreferences;

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(final ThemeMode theme) async {
    // Use the shared_preferences package to persist settings locally or the
    // http package to persist settings over the network.
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('theme', theme.toString());
  }

  Future<ThemeMode> getThemeMode() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final String? theme = sharedPreferences.getString('theme');
    if (theme == 'ThemeMode.system') {
      return ThemeMode.system;
    } else if (theme == 'ThemeMode.light') {
      return ThemeMode.light;
    } else if (theme == 'ThemeMode.dark') {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }

  Future<void> updateLanguage(final Locale locale) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('language', locale.languageCode);
  }

  Future<Locale> getLanguage() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final String? language = sharedPreferences.getString('language');
    if (language == 'en') {
      return const Locale('en');
    } else if (language == 'am') {
      return const Locale('am');
    } else if (language == 'ti') {
      return const Locale('ti');
    } else if (language == 'or') {
      return const Locale('or');
    } else if (language == 'ar') {
      return const Locale('ar');
    } else {
      return const Locale('en');
    }
  }
}
