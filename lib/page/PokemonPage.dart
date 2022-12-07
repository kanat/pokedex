import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import '../model/Pokemon.dart';

class PokemonPage extends StatefulWidget with WidgetsBindingObserver {
  final Pokemon pokemon;

  const PokemonPage({super.key, required this.pokemon});

  @override
  State<PokemonPage> createState() => _PokemonPageState(pokemon);
}

class _PokemonPageState extends State<PokemonPage> {

  final logger = Logger("PokemonPageState");

  final Pokemon pokemon;

  _PokemonPageState(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
      ),
      body: Image.network(
        pokemon.imageUrl,
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        onPressed: () {  },
        child: const Icon(Icons.add),
      ),
    );
  }
}
