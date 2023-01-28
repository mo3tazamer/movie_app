import 'package:movie_app/movies/domain_layer/entites/movie.dart';

import '../repo/base_movie_repo.dart';

class getNowPlayingUseCase {
  BaseMovieRepo baseMovieRepo;

  getNowPlayingUseCase(this.baseMovieRepo);

  Future<List<Movie>> execute() async {
    return await baseMovieRepo.getNowPlaying();
  }
}
