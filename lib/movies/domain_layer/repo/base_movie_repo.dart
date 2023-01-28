import 'package:movie_app/movies/domain_layer/entites/movie.dart';

abstract class BaseMovieRepo {
  Future<List<Movie>> getNowPlaying();
  Future<List<Movie>> getTopRatedMovies();
  Future<List<Movie>> getPopularMovies();

}
