import 'package:flutter/material.dart';

import '../../../model/Pokemon.dart';
import 'PokemonTabBar.dart';
import 'PokemonTabBarView.dart';

class PokemonTabController extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonTabController({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return buildDefaultTabController();
  }

  DefaultTabController buildDefaultTabController() {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          const PokemonTabBar(),
          PokemonTabBarView(pokemon: pokemon)
        ],
      ),
    );
  }

}