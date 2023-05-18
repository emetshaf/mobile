import 'package:flutter/material.dart';

import '../../controllers/settings_controller.dart';
import '../../generated/l10n.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsPage extends StatelessWidget {
  const SettingsPage({
    required this.controller,
    super.key,
  });

  static const String routeName = '/settings';

  final SettingsController controller;

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(L10n.of(context).settingsPage),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          // Glue the SettingsController to the theme selection DropdownButton.
          //
          // When a user selects a theme from the dropdown list, the
          // SettingsController is updated, which rebuilds the MaterialApp.
          child: ListView(
            children: <Widget>[
              ListTile(
                title: const Text('General'),
                leading: const Icon(Icons.tune),
                onTap: () => Navigator.restorablePushNamed(
                  context,
                  '/general',
                ),
              ),
              ListTile(
                title: const Text('Appearance'),
                leading: const Icon(Icons.color_lens_outlined),
                onTap: () => Navigator.restorablePushNamed(
                  context,
                  '/appearance',
                ),
              ),
              DropdownButton<ThemeMode>(
                // Read the selected themeMode from the controller
                value: controller.themeMode,
                // Call the updateThemeMode method any time the user selects a theme.
                onChanged: controller.updateThemeMode,
                items: <DropdownMenuItem<ThemeMode>>[
                  DropdownMenuItem(
                    value: ThemeMode.system,
                    child: Text(L10n.of(context).systemMode),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.light,
                    child: Text(L10n.of(context).lightMode),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.dark,
                    child: Text(L10n.of(context).darkMode),
                  )
                ],
              ),
              const SizedBox(height: 32),
              DropdownButton<Locale>(
                // Read the selected themeMode from the controller
                value: controller.locale,
                // Call the updateThemeMode method any time the user selects a theme.
                onChanged: controller.updateLanguage,
                items: <DropdownMenuItem<Locale>>[
                  DropdownMenuItem(
                    value: const Locale('en'),
                    child: Text(L10n.of(context).english),
                  ),
                  DropdownMenuItem(
                    value: const Locale('am'),
                    child: Text(L10n.of(context).amharic),
                  ),
                  DropdownMenuItem(
                    value: const Locale('ti'),
                    child: Text(L10n.of(context).tigrigna),
                  ),
                  DropdownMenuItem(
                    value: const Locale('or'),
                    child: Text(L10n.of(context).oromo),
                  ),
                  DropdownMenuItem(
                    value: const Locale('ar'),
                    child: Text(L10n.of(context).arabic),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
