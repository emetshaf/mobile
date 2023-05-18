import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({
    super.key,
  });

  static const String routeName = '/library';

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(L10n.of(context).libraryPage),
        ),
      );
}
