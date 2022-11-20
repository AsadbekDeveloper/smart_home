import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedIconTheme: IconThemeData(
        color: scafColorDark,
      ),
      unselectedIconTheme: IconThemeData(
        color: lightGrey,
      ),
      showSelectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.house,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.robot,
          ),
          label: 'robot',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.buildingLock,
          ),
          label: 'security',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.bolt,
          ),
          label: 'settings',
        ),
      ],
    );
  }
}
