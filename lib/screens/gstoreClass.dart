import 'package:flutter/material.dart';
import 'cardclass.dart';
import 'film.dart';
class GstoreClass extends StatelessWidget {
  const GstoreClass({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Film> films = const [
      const Film(
        "House Of Dead",
        "HouseOfDead.jpg",
        "The House of the Dead is a classic arcade light gun shooter series from Sega that features government agents fighting hordes of biologically engineered undead and mutants",
        300,
      ),
      const Film(
        "IceRoad",
        "iceroad.jpg",
        "The Ice Road follows a team of truck drivers on a dangerous mission over frozen lakes and winter roads to deliver a crucial component to save workers trapped in .",
        200,
      ),
      const Film(
        "The Grudge",
        "thegrudge.jpg",
        "The Grudge is a curse, born when someone dies in extreme rage or sorrow and lingers where the person dies. Those who encounter it will die, and the curse is ..",
        150,
      ),
    ];

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

      body:
        ListView.builder(
          itemCount: films.length,
          itemBuilder: (BuildContext context, int index) {
            FilmCardWidget(title: films[index].title,imgPath: films[index].imagePath);
          },
        )
    );
  }
}