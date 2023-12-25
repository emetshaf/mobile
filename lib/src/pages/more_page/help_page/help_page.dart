import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({
    Key? key,
  }) : super(key: key);

  static const String routeName = '/help';

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Help'),
        ),
      );
}
