import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('API GIF', style: TextStyle(color: Colors.grey),),
          ),
          elevation: 8,
          shadowColor: Colors.black,
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
