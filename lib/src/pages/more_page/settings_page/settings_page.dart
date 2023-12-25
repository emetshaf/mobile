import 'package:flutter/material.dart';

import '../../../controllers/settings_controller.dart';
import '../../../generated/l10n.dart';

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
            ],
          ),
        ),
      );
}
