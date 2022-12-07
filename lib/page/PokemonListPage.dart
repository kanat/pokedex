import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import '../model/Pokemon.dart';
import '../page/PokemonPage.dart';
import '../widget/PokemonCard.dart';

class PokemonListPage extends StatefulWidget with WidgetsBindingObserver {
  PokemonListPage({
    super.key,
    required this.title,
    required this.pokemons,
  });

  final String title;
  final List<Pokemon> pokemons;

  @override
  State<PokemonListPage> createState() => _PokemonListPageState(pokemons);

}

class _PokemonListPageState extends State<PokemonListPage> {
  final logger = Logger("PokemonListPageState");

  int _counter = 0;
  final List<Pokemon> _pokemons;

  _PokemonListPageState(this._pokemons);

  void _incrementCounter() {
    logger.info("[_incrementCounter] _counter: $_counter");
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final children =  buildChildren(_pokemons, onTap: (pokemon) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PokemonPage(pokemon: pokemon)),
      );
      //Navigator.pushNamed(context, "/details", arguments: pokemon);
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GridView.count(crossAxisCount: 2, children: children),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  List<Widget> buildChildren(List<Pokemon> pokemons, {Function(Pokemon)? onTap}) {
    return pokemons
        .map<PokemonCard>((pokemon) => PokemonCard(pokemon: pokemon, onTap: onTap))
        .toList();
  }
}
