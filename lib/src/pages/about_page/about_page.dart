import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    super.key,
  });

  static const String routeName = '/about';

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(L10n.of(context).aboutPage),
        ),
      );
}
