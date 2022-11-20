import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_home/constants.dart';

class RoomsCategory extends StatelessWidget {
  final int index;
  final bool isSelected;
  const RoomsCategory(
      {super.key, required this.index, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? lightGreyCon : scafColorLight,
        border: Border.all(
          color: lightGrey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(
        15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FaIcon(
            rooms.values.elementAt(index),
            color: isSelected ? scafColorDark : darkGreyText,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            rooms.keys.elementAt(index),
            style: greyText.copyWith(
                color: isSelected ? scafColorDark : darkGreyText),
          ),
        ],
      ),
    );
  }
}
