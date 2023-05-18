import 'package:flutter/material.dart';

import '../../../controllers/controllers.dart';

class AppearancePage extends StatefulWidget {
  const AppearancePage({
    required this.controller,
    super.key,
  });

  static const String routeName = '/appearance';

  final SettingsController controller;

  @override
  State<AppearancePage> createState() => _AppearancePageState();
}

class _AppearancePageState extends State<AppearancePage> {
  ThemeMode theme = ThemeMode.system;

  Future<void> _darkModeDialog() async => showDialog(
        context: context,
        barrierDismissible: false,
        builder: (final BuildContext context) => AlertDialog(
          title: const Text('Dark mode'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ListTile(
                  leading: Radio(
                    value: ThemeMode.system,
                    groupValue: theme,
                    onChanged: (value) {
                      setState(() {
                        theme = value as ThemeMode;
                      });
                    },
                  ),
                  title: const Text('Follow system'),
                  onTap: () {
                    widget.controller.updateThemeMode(ThemeMode.system);
                    theme = ThemeMode.system;
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: ThemeMode.light,
                    groupValue: theme,
                    onChanged: (value) {
                      setState(() {
                        theme = value as ThemeMode;
                      });
                    },
                  ),
                  title: const Text('Off'),
                  onTap: () {
                    widget.controller.updateThemeMode(ThemeMode.light);
                    theme = ThemeMode.light;
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: ThemeMode.dark,
                    groupValue: theme,
                    onChanged: (value) {
                      setState(() {
                        theme = value as ThemeMode;
                      });
                    },
                  ),
                  title: const Text('On'),
                  onTap: () {
                    widget.controller.updateThemeMode(ThemeMode.dark);
                    theme = ThemeMode.dark;
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            )
          ],
        ),
      );
  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Appearance'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('Dark mode'),
              subtitle: const Text('Follow system'),
              onTap: () => _darkModeDialog(),
            ),
          ],
        ),
      );
}
