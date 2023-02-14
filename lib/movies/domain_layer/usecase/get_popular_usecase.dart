import 'package:dartz/dartz.dart';
import 'package:movie_app/core/network/failure.dart';
import 'package:movie_app/movies/domain_layer/entites/movie.dart';

import '../repo/base_movie_repo.dart';

class getPopularUseCase {
  BaseMovieRepo baseMovieRepo;

  getPopularUseCase(this.baseMovieRepo);

  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMovieRepo.getPopularMovies();
  }
}
