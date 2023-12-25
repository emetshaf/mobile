import 'package:flutter/material.dart';

import '../../../../controllers/controllers.dart';
import '../../../../generated/l10n.dart';

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
  late Locale locale;

  @override
  initState() {
    super.initState();
    locale = widget.controller.locale;
  }

  Future<void> _appLanguageDialog() async => showDialog(
        context: context,
        builder: (final BuildContext context) => AlertDialog(
          title: const Text('App language'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <ListTile>[
                ListTile(
                  leading: Radio(
                    value: const Locale('en'),
                    groupValue: locale,
                    onChanged: (final Locale? value) {
                      setState(() {
                        locale = value as Locale;
                      });
                    },
                  ),
                  title: Text(L10n.of(context).english),
                  onTap: () {
                    widget.controller.updateLocale(const Locale('en'));
                    locale = const Locale('en');
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: const Locale('am'),
                    groupValue: locale,
                    onChanged: (final Locale? value) {
                      setState(() {
                        locale = value as Locale;
                      });
                    },
                  ),
                  title: Text(L10n.of(context).amharic),
                  onTap: () {
                    widget.controller.updateLocale(const Locale('am'));
                    locale = const Locale('am');
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: const Locale('ti'),
                    groupValue: locale,
                    onChanged: (final Locale? value) {
                      setState(() {
                        locale = value as Locale;
                      });
                    },
                  ),
                  title: Text(L10n.of(context).tigrigna),
                  onTap: () {
                    widget.controller.updateLocale(const Locale('ti'));
                    locale = const Locale('ti');
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: const Locale('or'),
                    groupValue: locale,
                    onChanged: (final Locale? value) {
                      setState(() {
                        locale = value as Locale;
                      });
                    },
                  ),
                  title: Text(L10n.of(context).oromo),
                  onTap: () {
                    widget.controller.updateLocale(const Locale('or'));
                    locale = const Locale('or');
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Radio(
                    value: const Locale('ar'),
                    groupValue: locale,
                    onChanged: (final Locale? value) {
                      setState(() {
                        locale = value as Locale;
                      });
                    },
                  ),
                  title: Text(L10n.of(context).arabic),
                  onTap: () {
                    widget.controller.updateLocale(const Locale('ar'));
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
              subtitle: Text(locale.toString()),
              onTap: () => _appLanguageDialog(),
            ),
          ],
        ),
      );
}
