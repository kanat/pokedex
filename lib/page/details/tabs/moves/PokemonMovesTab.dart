import 'package:flutter/material.dart';

import '../../../../model/Pokemon.dart';

class PokemonMovesTab extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonMovesTab({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return buildMoves();
  }

  Widget buildMoves() {
    return Container(

        child: const Center(
          child: Text("About"),
        ));
  }
}
