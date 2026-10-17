import 'package:flutter/material.dart';
import '../components/cardclass.dart';
import '../models/film.dart';

class GstoreClass extends StatefulWidget {
  const GstoreClass({super.key});

  @override
  State<GstoreClass> createState() => _GstoreClassState();
}

class _GstoreClassState extends State<GstoreClass> {
  bool isGridView = false;

  @override
  Widget build(BuildContext context) {
    final List<film> films = [
      film(
        "House Of Dead",
        "The House of the Dead is a classic arcade light gun shooter series from Sega that features government agents fighting hordes of biologically engineered undead and mutants",
        "assets/images/HouseOfDead.jpg",
        300,
      ),
      film(
        "IceRoad",
        "The Ice Road follows a team of truck drivers on a dangerous mission over frozen lakes and winter roads to deliver a crucial component to save workers trapped in .",
        "assets/images/iceroad.jpg",
        200,
      ),
      film(
        "The Grudge",
        "The Grudge is a curse, born when someone dies in extreme rage or sorrow and lingers where the person dies. Those who encounter it will die, and the curse is ..",
        "assets/images/thegrudge.jpg",
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
        actions: [
          IconButton(
            icon: Icon(
              isGridView ? Icons.list : Icons.grid_view,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                isGridView = !isGridView;
              });
            },
          ),
        ],
      ),
      body: isGridView
          ? GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: films.length,
              itemBuilder: (BuildContext context, int index) {
                final f = films[index];
                return FilmCardWidget(
                  title: f.title,
                  imgPath: f.imagePath,
                  description: f.description,
                  price: f.price,
                );
              },
            )
          : ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: films.length,
              itemBuilder: (BuildContext context, int index) {
                final f = films[index];
                return FilmCardWidget(
                  title: f.title,
                  imgPath: f.imagePath,
                  description: f.description,
                  price: f.price,
                );
              },
            ),
    );
  }
}