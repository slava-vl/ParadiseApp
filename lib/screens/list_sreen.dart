import 'package:codelab_3/colors.dart';
import 'package:codelab_3/demo_data.dart';
import 'package:codelab_3/models/attraction_model.dart';
import 'package:codelab_3/widgets/attraction_card.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Icon(
          Icons.pool,
          color: Colors.white,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      backgroundColor: mainThemeColor,
      body: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(50),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(
                50,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: attractionsList.length,
                  itemBuilder: (context, index) {
                    Attraction attr = attractionsList[index];
                    return AttractionCard(
                      attraction: attr,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
