import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:movie_app/core/util/enums.dart';

import '../../domain_layer/entites/movie.dart';

import '../../domain_layer/usecase/get_now_playing_usecase.dart';
import '../../domain_layer/usecase/get_popular_usecase.dart';
import '../../domain_layer/usecase/get_top_rated_usecase.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final GetNowPlayingUseCase getNowPlayingUseCase;
  final getPopularUseCase popularUseCase;
  final getTopRatedUseCase topRatedUseCase;

  MovieBloc(
      this.getNowPlayingUseCase, this.popularUseCase, this.topRatedUseCase)
      : super(const MovieState()) {
    on<GetNowPlaying>(
      (event, emit) async {
        final result = await getNowPlayingUseCase.execute();
        emit(const MovieState(getNowPlayingState: RequsetState.loaded));
        result.fold(
            (l) => emit(MovieState(
                getNowPlayingState: RequsetState.error,
                getNowPlayingMessage: l.message)),
            (r) => emit(MovieState(
                getNowPlayingState: RequsetState.loaded, getNowPlaying: r)));
      },
    );
    on<GetPopularMovies>((event, emit) async {
      final result = await popularUseCase.execute();
      emit(const MovieState(getPopularMoviesState: RequsetState.loaded));
      result.fold(
          (l) => emit(MovieState(
              getPopularMoviesState: RequsetState.error,
              getPopularMoviesMessage: l.message)),
          (r) => emit(MovieState(
              getPopularMoviesState: RequsetState.loaded,
              getPopularMovies: r)));
    });
    on<GetTopRatedMovies>((event, emit) async {
      final result = await topRatedUseCase.execute();
      emit(const MovieState(getTopRatedMoviesState: RequsetState.loaded));
      result.fold(
          (l) => emit(MovieState(
              getTopRatedMoviesState: RequsetState.error,
              getTopRatedMoviesMessage: l.message)),
          (r) => emit(MovieState(
              getTopRatedMoviesState: RequsetState.loaded,
              getTopRatedMovies: r)));
    });
  }
}
