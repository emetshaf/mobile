import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({
    super.key,
  });

  static const String routeName = '/discover';

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(L10n.of(context).discoverPage),
        ),
      );
}
