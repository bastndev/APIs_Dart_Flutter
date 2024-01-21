# APIs_Dart_Flutter

apis para que lo uses en dart 

https://pokeapi.co/


<img width="180" src="IMG/">

<img width="180" src="IMG/">

link de pagina web https://pokeapi.co/

code:


dependencies:
  cupertino_icons: ^1.0.2
  dio: ^5.4.0
  flutter:
    sdk: flutter


import 'package:flutter/material.dart';
import 'package:api_pokemon/config/theme/app_theme.dart';
import 'package:api_pokemon/presentation/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: const HomeScreen(),
    );
  }