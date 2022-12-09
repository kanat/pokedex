import '../model/Pokemon.dart';

abstract class PokemonRepository {
  List<Pokemon> getPokemons();
}

class MockPokemonRepository extends PokemonRepository {
  @override
  List<Pokemon> getPokemons() {
    var baseUrl =
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork";
    return List<Pokemon>.generate(100, (index) {
      final position = index + 1;
      final name = names[index % names.length];
      final color = colors[index % colors.length];
      return Pokemon(
          id: position,
          imageUrl: "$baseUrl/$position.png",
          name: name,
          types: ["Water", "Poison"],
          color: color);
    });
  }

  static final colors = [
    0xFF009688,
    0xFFFF4081,
    0xFF2196F3,
    0xFFFF8F00,
  ];

  static final names = [
    "Bulbasaur",
    "Charmander",
    "Pikachu",
    "Squirtle",
  ];
}
