import 'package:flutter/material.dart';
import '../models/models.dart';

class CustomSideBar extends StatelessWidget {
  const CustomSideBar({
    required this.onTapItem,
    required this.items,
    required this.selectedIndex,
    super.key,
  });

  final List<Bar> items;
  final Function(int index)? onTapItem;
  final int selectedIndex;

  @override
  Widget build(final BuildContext context) => NavigationRail(
        selectedIndex: selectedIndex,
        useIndicator: true,
        indicatorColor: Colors.black12,
        elevation: 6,
        onDestinationSelected: onTapItem,
        labelType: NavigationRailLabelType.all,
        destinations: items
            .map(
              (final Bar x) => NavigationRailDestination(
                icon: Icon(x.icon),
                selectedIcon: Icon(x.activeIcon),
                label: Text(x.name),
              ),
            )
            .toList(),
      );
}
