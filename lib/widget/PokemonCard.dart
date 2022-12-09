import 'package:flutter/material.dart';

import '../model/Pokemon.dart';
import 'ShapedText.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  final Function(Pokemon)? onTap;

  const PokemonCard({super.key, required this.pokemon, this.onTap});

  @override
  Widget build(BuildContext context) {

    pokemon.types.map((type) => Column(
      children: [
        const SizedBox(height: 10),
        ShapedText(text: type)
      ],
    )).toList();

    return GestureDetector(
        onTap: () {
          onTap?.call(pokemon);
        },
        child: Card(
          // margin: const EdgeInsets.all(8.0),
          color: Color(pokemon.color),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.bottomRight,
                child: Image.network(
                  pokemon.imageUrl,
                  width: 90,
                  height: 90,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pokemon.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Column(
                      children: pokemon.types.map((type) => Column(
                        children: [
                          const SizedBox(height: 10),
                          ShapedText(text: type)
                        ],
                      )).toList(),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
