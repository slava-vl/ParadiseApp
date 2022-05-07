import 'package:codelab_3/colors.dart';
import 'package:flutter/material.dart';

import '../models/bottom_bar_items.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  final List<BottomBarItem> barItemsList = [
    BottomBarItem(label: 'Home', isSelected: true, icon: Icons.home),
    BottomBarItem(label: 'Account', isSelected: false, icon: Icons.person),
    BottomBarItem(
        label: 'Bookings', isSelected: false, icon: Icons.pending_actions),
    BottomBarItem(label: 'Payments', isSelected: false, icon: Icons.payments),
    BottomBarItem(label: 'More', isSelected: false, icon: Icons.more_horiz),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(barItemsList.length, (index) {
          var barItem = barItemsList[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                barItemsList.forEach((element) {
                  element.isSelected = barItem == element;
                });
              });
            },
            child: Column(
              children: [
                Icon(barItem.icon,
                    color: barItem.isSelected! ? mainThemeColor : Colors.grey),
                Text(
                  barItem.label!,
                  style: TextStyle(
                      color: barItem.isSelected! ? mainThemeColor : Colors.grey,
                      fontSize: 11),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
