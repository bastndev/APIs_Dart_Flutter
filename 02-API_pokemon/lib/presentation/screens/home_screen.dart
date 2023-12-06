import 'package:api_pokemon/infrastructure/models/pokemon.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Pokemon? pokemon;
  int pokemonId = 0;

  @override
  void initState() {
    super.initState();
    getPokemon();
  }

  Future<void> getPokemon() async {
    pokemonId++;
    final response =
        await Dio().get('https://pokeapi.co/api/v2/pokemon/$pokemonId');

    pokemon = Pokemon.fromJson(response.data);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Pokemon ID: $pokemonId',
            style: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pokemon?.name ?? 'No data'),
            if (pokemon != null) ...[
              Image.network(pokemon!.sprites.frontDefault),
              Image.network(pokemon!.sprites.backDefault)
            ]
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getPokemon,
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
