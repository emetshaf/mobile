import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class MorePage extends StatelessWidget {
  const MorePage({
    super.key,
  });

  static const String routeName = '/more';

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(L10n.of(context).morePage),
        ),
        body: ListView(
          children: <Widget>[
            // const Divider(
            //   thickness: 2,
            // ),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: Text(L10n.of(context).settingsPage),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: Text(L10n.of(context).aboutPage),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: Text(L10n.of(context).helpPage),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      );
}
