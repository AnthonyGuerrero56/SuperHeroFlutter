import 'package:flutter/material.dart';
import 'package:superhero_flutter/models/hero.dart';
import 'package:superhero_flutter/widgets/HeroStatSlider.dart';

class HeroDetailScreen extends StatelessWidget {
  const HeroDetailScreen({super.key, required this.hero});

  final SuperHero hero;

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: hero.id,
              child: Image.network(hero.path, width: width)
            ),
            Text(hero.name),
            Text(hero.fullName),
            Card(
              child: ExpansionTile(
                title: const Text("PowerStats"), 
                children: [
                  HeroStatSlider(statName: "Intelligence", statValue: hero.stats.intelligence),
                  HeroStatSlider(statName: "Strength", statValue: hero.stats.strength),
                  HeroStatSlider(statName: "Speed", statValue: hero.stats.speed),
                  HeroStatSlider(statName: "Durability", statValue: hero.stats.durability),
                  HeroStatSlider(statName: "Power", statValue: hero.stats.power),
                  HeroStatSlider(statName: "Combat", statValue: hero.stats.combat),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}