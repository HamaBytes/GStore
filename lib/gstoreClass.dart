import 'package:flutter/material.dart';
import 'cardclass.dart';

class GstoreClass extends StatelessWidget {
  const GstoreClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "GStore",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),

      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(12),
        physics: BouncingScrollPhysics(),

        child: Column(
          children: [
            FilmCardWidget(
              title: "House of Dead",
              imgPath: "assets/images/HouseOfDead.jpg",
            ),

            FilmCardWidget(
              title: "Ice Road",
              imgPath: "assets/images/iceroad.jpg",
            ),

            FilmCardWidget(
              title: "The Grudge",
              imgPath: "assets/images/thegrudge.jpg",
            ),
          ],
        ),
      ),
    );
  }
}