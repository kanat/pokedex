import 'package:flutter/material.dart';

import 'page/feed/PokemonFeedPage.dart';
import 'repository/PokemonRepository.dart';

void main() {
  runApp(const Pokedex());
}

class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PokemonFeedPage(
        title: 'Pokedex',
        repository: MockPokemonRepository(),
      ),
    );
  }
}
