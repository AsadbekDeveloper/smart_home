import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const scafColorLight = Color.fromRGBO(252, 252, 252, 1);
const scafColorDark = Color.fromRGBO(23, 23, 23, 1);
const darkGrey = Color.fromRGBO(55, 55, 55, 1);
const darkGreyText = Color.fromARGB(255, 130, 130, 130);
const lightGrey = Color.fromRGBO(220, 220, 220, 1);
const lightGreyCon = Color.fromRGBO(240, 240, 240, 1);
const mainAccent = Color.fromRGBO(40, 95, 211, 1);

const headerLarge = TextStyle(
  fontSize: 32,
  color: scafColorDark,
  fontWeight: FontWeight.bold,
);
const greyText = TextStyle(
  fontSize: 15,
  color: darkGreyText,
  fontWeight: FontWeight.bold,
);
const rooms = {
  'My home': FontAwesomeIcons.doorClosed,
  'Bedroom': FontAwesomeIcons.bed,
  'Bathroom': FontAwesomeIcons.bath,
  "Living room": FontAwesomeIcons.couch,
};

class Device {
  final icon;
  final bool isOn;
  final String title;
  final String value;

  Device(
      {required this.icon,
      required this.isOn,
      required this.title,
      required this.value});
}

final devices = [
  Device(
    icon: FontAwesomeIcons.thermometer,
    isOn: true,
    title: 'Climate',
    value: 'Air +21',
  ),
  Device(
    icon: FontAwesomeIcons.wifi,
    isOn: false,
    title: 'Internet',
    value: '25,11 MB/s',
  ),
  Device(
    icon: FontAwesomeIcons.lightbulb,
    isOn: false,
    title: 'Lightning',
    value: '3 devices',
  ),
  Device(
    icon: FontAwesomeIcons.tv,
    isOn: true,
    title: 'Television',
    value: 'channel 6',
  ),
];
