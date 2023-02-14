import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:movie_app/core/util/enums.dart';

import '../../domain_layer/entites/movie.dart';

import '../../domain_layer/usecase/get_now_playing_usecase.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
 final GetNowPlayingUseCase getNowPlayingUseCase;

  MovieBloc(this.getNowPlayingUseCase) : super( const MovieState()) {
    on<MovieEvent>((event, emit) async {
      final result = await getNowPlayingUseCase.execute();
      emit(const MovieState(state: RequsetState.loaded));
      result.fold(
          (l) =>
              emit(MovieState(state: RequsetState.error, message: l.message)),
          (r) =>
              emit(MovieState(state: RequsetState.loaded, getNowPlaying: r)));
    });
  }
}
