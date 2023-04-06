part of 'movie_bloc.dart';

class MovieState extends Equatable {
  final List<Movie> getNowPlaying;
  final RequsetState getNowPlayingState;
  final String getNowPlayingMessage;
  final List<Movie> getPopularMovies;
  final RequsetState getPopularMoviesState;
  final String getPopularMoviesMessage;
  final List<Movie> getTopRatedMovies;
  final RequsetState getTopRatedMoviesState;
  final String getTopRatedMoviesMessage;

  const MovieState(
      {this.getTopRatedMovies = const [],
      this.getTopRatedMoviesState = RequsetState.loading,
      this.getTopRatedMoviesMessage = '',
      this.getNowPlaying = const [],
      this.getNowPlayingState = RequsetState.loading,
      this.getNowPlayingMessage = '',
      this.getPopularMovies = const [],
      this.getPopularMoviesState = RequsetState.loading,
      this.getPopularMoviesMessage = ''});

  @override
  // TODO: implement props
  List<Object?> get props => [
        getNowPlaying,
        getNowPlayingState,
        getNowPlayingMessage,
        getPopularMovies,
        getPopularMoviesState,
        getPopularMoviesMessage,
        getTopRatedMovies,
        getTopRatedMoviesState,
        getTopRatedMoviesMessage
      ];
}
