import 'package:flutter/material.dart';

import '../../../../model/Pokemon.dart';

class PokemonStatsTab extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonStatsTab({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return buildStats();
  }

  Widget buildStats() {
    return Container(

        child: const Center(
          child: Text("Stats"),
        ));
  }
}
