import 'package:flutter/material.dart';
import '../../generated/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  static const String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(L10n.of(context).homePage),
        ),
      );
}
