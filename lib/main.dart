import 'package:flutter/material.dart';

import 'model/Pokemon.dart';
import 'page/PokemonListPage.dart';

void main() {
  runApp(const Pokedex());
}

class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context) {
    var baseUrl =
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork";

    final List<Pokemon> pokemonList = buildPokemons(baseUrl);

    return MaterialApp(
      title: 'Pokedex Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PokemonListPage(
        title: 'Pokedex',
        pokemons: pokemonList,
      ),
      initialRoute: "/",
      routes: {
        "/details": (context) {
          return PokemonListPage(
            title: 'Pokedex',
            pokemons: pokemonList,
          );
        },
      },
    );
  }

  List<Pokemon> buildPokemons(String baseUrl) {
    return List<Pokemon>.generate(100, (index) {
      final position = index + 1;
      return Pokemon(
          id: position,
          imageUrl: "$baseUrl/$position.png",
          name: "name_$position");
    });
  }
}
