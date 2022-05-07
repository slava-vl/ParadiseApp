import 'package:codelab_3/colors.dart';
import 'package:codelab_3/screens/landing_page.dart';
import 'package:codelab_3/screens/list_sreen.dart';
import 'package:flutter/material.dart';

class LandingSearchBar extends StatelessWidget {
  const LandingSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Search hotel',
            style: TextStyle(color: Colors.grey),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ListScreen()));
            },
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: mainThemeColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
