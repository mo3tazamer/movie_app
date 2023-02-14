part of 'movie_bloc.dart';

class MovieState extends Equatable {
  final List<Movie> getNowPlaying;
  final RequsetState state;
  final String message;

  const MovieState(
      {this.getNowPlaying = const [],
      this.state = RequsetState.loading,
      this.message = ''});
  @override
  List<Object> get props => [getNowPlaying, state, message];
}
