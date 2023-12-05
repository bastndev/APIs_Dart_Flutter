import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Petición Http'),
      ),
      body: const SizedBox(),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.navigate_next ),
        onPressed: () {},
      ),
    );
  }
}
