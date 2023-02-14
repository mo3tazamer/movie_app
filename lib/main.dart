import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'core/servies_locator/servies_locator.dart';
import 'movies/persention_layer/controller/movie_bloc.dart';
import 'movies/persention_layer/screens/movie_screen.dart';

void main() {

  ServicesLocator().init();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MovieScreen(),
    );
  }
}
