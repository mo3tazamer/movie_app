import 'package:flutter/material.dart';

import 'core/servies_locator/servies_locator.dart';

import 'movies/persention_layer/screens/movies_screen.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainMoviesScreen(),
    );
  }
}
