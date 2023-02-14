import 'package:dartz/dartz.dart';
import 'package:movie_app/movies/domain_layer/entites/movie.dart';

import '../../../core/network/failure.dart';
import '../repo/base_movie_repo.dart';

class GetNowPlayingUseCase {
  BaseMovieRepo baseMovieRepo;

  GetNowPlayingUseCase(this.baseMovieRepo);

  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMovieRepo.getNowPlaying();

  }

}
