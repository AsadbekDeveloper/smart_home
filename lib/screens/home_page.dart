import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/widgets/devices_card.dart';

import '../widgets/app_bar.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/rooms_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: MainAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Welcome home',
                  style: headerLarge,
                ),
                Text(
                  'Sun, 04 Jun, 2022',
                  style: greyText,
                ),
              ],
            ),
            Container(
              height: 100,
              margin: EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  width: 15,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: rooms.length,
                itemBuilder: ((context, index) => RoomsCategory(index: index, isSelected:index==1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Devices',
                    style: headerLarge,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Add',
                        style: greyText,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: lightGrey,
                        child: FaIcon(
                          FontAwesomeIcons.plus,
                          color: darkGreyText,
                          size: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: devices.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return DevicesCard(index: index);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
