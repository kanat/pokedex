import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import '../../model/Pokemon.dart';
import '../../widget/ShapedText.dart';
import 'tabs/PokemonTabController.dart';

class PokemonDetailsPage extends StatefulWidget with WidgetsBindingObserver {
  final Pokemon pokemon;

  const PokemonDetailsPage({super.key, required this.pokemon});

  @override
  State<PokemonDetailsPage> createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  final logger = Logger("PokemonPageState");

  @override
  Widget build(BuildContext context) {
    final pokemon = widget.pokemon;
    return Scaffold(
      backgroundColor: Color(pokemon.color),
      appBar: buildPokemonAppBar(pokemon),
      body: buildPokemonBody(pokemon),
    );
  }

  AppBar buildPokemonAppBar(Pokemon pokemon) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
      ),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      actions: [
        Padding(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.favorite_outline),
            ))
      ],
    );
  }

  Stack buildPokemonBody(Pokemon pokemon) {
    return Stack(
      children: [
        Column(
          children: [
            buildPokemonName(pokemon),
            buildPokemonTypes(pokemon),
            const Spacer(flex: 2),
            Expanded(
              flex: 5,
              child: PokemonTabController(pokemon: pokemon),
            )
          ],
        ),
        buildPokemonPicture(pokemon)
      ],
    );
  }

  Row buildPokemonName(Pokemon pokemon) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16),
          child: Text(pokemon.name,
              style: const TextStyle(fontSize: 22, color: Colors.white)),
        )
      ],
    );
  }

  Row buildPokemonTypes(Pokemon pokemon) {
    return Row(
      children: pokemon.types
          .map((type) => Padding(
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: ShapedText(text: type),
              ))
          .toList(),
    );
  }

  Container buildPokemonPicture(Pokemon pokemon) {
    return Container(
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.only(top: 100),
      child: Image.network(
        width: 200,
        height: 200,
        pokemon.imageUrl,
      ),
    );
  }
}
