import 'package:flutter/material.dart';

import '../model/Pokemon.dart';
import 'ShapedText.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  final Function(Pokemon)? onTap;

  const PokemonCard({super.key, required this.pokemon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTap?.call(pokemon);
        },
        child: Card(
          // margin: const EdgeInsets.all(8.0),
          color: Colors.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Stack(
            children: [
              Image.network(
                pokemon.imageUrl,
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
                    const SizedBox(height: 10),
                    ShapedText(text: pokemon.name),
                    const SizedBox(height: 10),
                    ShapedText(text: pokemon.name)
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
