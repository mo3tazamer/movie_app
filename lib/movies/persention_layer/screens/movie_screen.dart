import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/servies_locator/servies_locator.dart';
import '../controller/movie_bloc.dart';
import 'package:get_it/get_it.dart';
class MovieScreen extends StatelessWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieBloc(sl())..add(GetNowPlaying()),
      lazy: false,
      child: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          print(state);
          return const Scaffold(
            body: null,
          );
        },
      ),
    );
  }
}
