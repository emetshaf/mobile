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
    icon: Icons.book_outlined,
    activeIcon: Icons.book,
    name: L10n.current.discoverPage,
  ),
  Bar(
    icon: Icons.book_outlined,
    activeIcon: Icons.book,
    name: L10n.current.libraryPage,
  ),
  Bar(
    icon: Icons.more_horiz_outlined,
    activeIcon: Icons.more_horiz,
    name: L10n.current.morePage,
  ),
];
