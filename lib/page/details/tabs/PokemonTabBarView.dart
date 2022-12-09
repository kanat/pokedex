import 'package:flutter/material.dart';

import '../../../model/Pokemon.dart';
import 'about/PokemonAboutTab.dart';
import 'evolution/PokemonEvolutionTab.dart';
import 'moves/PokemonMovesTab.dart';
import 'stats/PokemonStatsTab.dart';

class PokemonTabBarView extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonTabBarView({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return buildTabBarView();
  }

  Widget buildTabBarView() {
    return Expanded(
      child: Container(
          color: Colors.white,
          child: TabBarView(
            children: [
              PokemonAboutTab(pokemon: pokemon),
              PokemonStatsTab(pokemon: pokemon),
              PokemonEvolutionTab(pokemon: pokemon),
              PokemonMovesTab(pokemon: pokemon),
            ],
          )),
    );
  }
}
