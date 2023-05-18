import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  void load() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('theme', 'ThemeMode.light');
    sharedPreferences.setString('language', 'en');
  }

  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(L10n.of(context).homePage),
        ),
      );
}
