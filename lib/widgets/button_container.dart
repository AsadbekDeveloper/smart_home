import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonContainer extends StatelessWidget {
  final bool isDark;
  final icon;
  const ButtonContainer({super.key, required this.isDark, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: isDark ? darkGrey : scafColorLight,
        border: Border.all(
          color: lightGrey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.center,
        child: FaIcon(
          icon,
          color: isDark ? scafColorLight : scafColorDark,
          size: 20,
        ),
      ),
    );
  }
}
