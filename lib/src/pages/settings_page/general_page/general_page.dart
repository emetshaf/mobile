import 'package:flutter/material.dart';

import '../../../controllers/controllers.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({
    required this.controller,
    super.key,
  });

  static const String routeName = '/general';

  final SettingsController controller;

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  Locale locale = const Locale('en');
  Future<void> _appLanguageDialog() async => showDialog(
        context: context,
        barrierDismissible: false,
        builder: (final BuildContext context) => AlertDialog(
          title: const Text('App language'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ListTile(
                  leading: Radio(
                    value: const Locale('en'),
                    groupValue: locale,
                    onChanged: (value) {
                      setState(() {
                        locale = value as Locale;
                      });
                    },
                  ),
                  title: const Text('English'),
                  onTap: () {
                    widget.controller.updateLanguage(const Locale('en'));
                    locale = const Locale('en');
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: const Locale('am'),
                    groupValue: locale,
                    onChanged: (value) {
                      setState(() {
                        locale = value as Locale;
                      });
                    },
                  ),
                  title: const Text('Amharic'),
                  onTap: () {
                    widget.controller.updateLanguage(const Locale('am'));
                    locale = const Locale('am');
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: const Locale('ti'),
                    groupValue: locale,
                    onChanged: (value) {
                      setState(() {
                        locale = value as Locale;
                      });
                    },
                  ),
                  title: const Text('Tigrigna'),
                  onTap: () {
                    widget.controller.updateLanguage(const Locale('ti'));
                    locale = const Locale('ti');
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: const Locale('or'),
                    groupValue: locale,
                    onChanged: (value) {
                      setState(() {
                        locale = value as Locale;
                      });
                    },
                  ),
                  title: const Text('Oromo'),
                  onTap: () {
                    widget.controller.updateLanguage(const Locale('or'));
                    locale = const Locale('or');
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: const Locale('ar'),
                    groupValue: locale,
                    onChanged: (value) {
                      setState(() {
                        locale = value as Locale;
                      });
                    },
                  ),
                  title: const Text('Arabic'),
                  onTap: () {
                    widget.controller.updateLanguage(const Locale('ar'));
                    locale = const Locale('ar');
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
          title: const Text('General'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('App language'),
              subtitle: const Text('Deafult'),
              onTap: () => _appLanguageDialog(),
            ),
          ],
        ),
      );
}
