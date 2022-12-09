import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:prokedex/repository/PokemonRepository.dart';

import '../../model/Pokemon.dart';
import '../details/PokemonDetailsPage.dart';
import '../../widget/PokemonCard.dart';

class PokemonFeedPage extends StatefulWidget {

  const PokemonFeedPage({
    super.key,
    required this.title,
    required this.repository
  });

  final String title;
  final PokemonRepository repository;

  @override
  State<PokemonFeedPage> createState() => _PokemonFeedPageState();
}

class _PokemonFeedPageState extends State<PokemonFeedPage> {
  final logger = Logger("PokemonListPageState");

  List<Pokemon> pokemons = [];

  @override
  void initState() {
    pokemons = widget.repository.getPokemons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final children = buildChildren(pokemons, onTap: (pokemon) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PokemonDetailsPage(pokemon: pokemon)),
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            padding: const EdgeInsets.all(12.0),
            children: children),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.settings),
      ),
    );
  }

  List<Widget> buildChildren(List<Pokemon> pokemons,
      {Function(Pokemon)? onTap}) {
    return pokemons
        .map<PokemonCard>(
            (pokemon) => PokemonCard(pokemon: pokemon, onTap: onTap))
        .toList();
  }
}
