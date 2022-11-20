import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'button_container.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonContainer(
              isDark: false,
              icon: FontAwesomeIcons.barsStaggered,
            ),
            Row(
              children: const [
                ButtonContainer(
                  isDark: false,
                  icon: FontAwesomeIcons.bell,
                ),
                SizedBox(
                  width: 20,
                ),
                ButtonContainer(
                  isDark: false,
                  icon: FontAwesomeIcons.penToSquare,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
