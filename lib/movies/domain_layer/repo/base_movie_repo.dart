import 'package:dartz/dartz.dart';
import 'package:movie_app/movies/domain_layer/entites/movie.dart';

import '../../../core/network/failure.dart';

abstract class BaseMovieRepo {
  Future<Either<Failure, List<Movie>>> getNowPlaying();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();

}
