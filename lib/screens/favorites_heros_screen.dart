import 'package:flutter/material.dart';
import 'package:superhero_flutter/dao/hero_dao.dart';

class FavoritesHerosScreen extends StatefulWidget {
  const FavoritesHerosScreen({super.key});

  @override
  State<FavoritesHerosScreen> createState() => _FavoritesHerosScreenState();
}

class _FavoritesHerosScreenState extends State<FavoritesHerosScreen> {
  List _favoriteHeros = [];

  initialize() async {
    _favoriteHeros = await HeroDao().fetchAll();

    setState(() {
      _favoriteHeros = _favoriteHeros;
    });
  }

  @override
  void initState() {
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _favoriteHeros.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(_favoriteHeros[index].name),
              subtitle: Text(_favoriteHeros[index].fullName)
            ),
          );
        }
      ),
    );
  }
}