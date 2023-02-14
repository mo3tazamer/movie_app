part of 'movie_bloc.dart';

abstract class MovieEvent extends Equatable {
  const MovieEvent();
  @override
  List<Object> get props => [];
}

class GetNowPlaying extends MovieEvent {}

class GgetPopularMovies extends MovieEvent {}

class GetTopRatedMovies extends MovieEvent {}
