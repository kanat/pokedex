import 'package:flutter/material.dart';

import '../../../../model/Pokemon.dart';

class PokemonEvolutionTab extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonEvolutionTab({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return buildEvolution();
  }

  Widget buildEvolution() {
    return Container(

        child: const Center(
          child: Text("About"),
        ));
  }
}
