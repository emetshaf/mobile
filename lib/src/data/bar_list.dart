import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../models/models.dart';

final List<Bar> barItems = <Bar>[
  Bar(
    icon: Icons.home_outlined,
    activeIcon: Icons.home,
    name: L10n.current.homePage,
  ),
  Bar(
    icon: Icons.menu_book_outlined,
    activeIcon: Icons.menu_book,
    name: L10n.current.discoverPage,
  ),
  Bar(
    icon: Icons.view_week_outlined,
    activeIcon: Icons.view_week,
    name: L10n.current.libraryPage,
  ),
  Bar(
    icon: Icons.person_outline,
    activeIcon: Icons.person,
    name: L10n.current.morePage,
  ),
];
