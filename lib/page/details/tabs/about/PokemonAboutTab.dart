import 'package:flutter/material.dart';

import '../../../../model/Pokemon.dart';

class PokemonAboutTab extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonAboutTab({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return buildAbout();
  }

  Widget buildAbout() {
    final basicParams = [
      Parameter(title: "Species", value: "Seed"),
      Parameter(title: "Height", value: "70 cm"),
      Parameter(title: "Weight", value: "7 kg"),
      Parameter(title: "Abilities", value: "Overgrow, Fire"),
    ];

    final extraParams = [
      Parameter(title: "Egg Groups", value: "Monster"),
      Parameter(title: "Egg Cycle", value: "Grass"),
    ];

    final basicParamWidgets =
        basicParams.map((param) => buildParameter(param)).toList();

    final extraParamWidgets =
    extraParams.map((param) => buildParameter(param)).toList();

    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: ListView(
        children: [
          ...basicParamWidgets,
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 24),
            child: Text("Breeding",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ),
          ...extraParamWidgets
        ],
      ),
    );
  }

  Padding buildParameter(Parameter param) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16),
      child: Row(
        children: [
          SizedBox(
              width: 120,
              child: Text(
                param.title,
                style: const TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
              )),
          Text(param.value,
              style: const TextStyle(color: Colors.black, fontSize: 14))
        ],
      ),
    );
  }
}

class Parameter {
  final String title;
  final String value;

  Parameter({required this.title, required this.value});
}
