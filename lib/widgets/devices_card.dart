import 'package:flutter/cupertino.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/widgets/button_container.dart';

class DevicesCard extends StatelessWidget {
  final int index;
  const DevicesCard({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    final device = devices[index];
    return Container(
      decoration: BoxDecoration(
        color: device.isOn ? scafColorDark : lightGreyCon,
        border: Border.all(
          color: lightGrey,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonContainer(
                isDark: device.isOn,
                icon: device.icon,
              ),
              CupertinoSwitch(
                value: device.isOn,
                onChanged: (_) {},
                activeColor: mainAccent,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                device.title,
                style: greyText.copyWith(
                  color: device.isOn ? scafColorLight : darkGrey,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                device.value,
                style: greyText.copyWith(
                  color: device.isOn ? scafColorLight : darkGrey,
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
