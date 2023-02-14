import 'package:get_it/get_it.dart';
import 'package:movie_app/movies/data_layer/datasource/data_source_remote.dart';
import 'package:movie_app/movies/data_layer/repo/movie_repo.dart';
import 'package:movie_app/movies/domain_layer/repo/base_movie_repo.dart';
import 'package:movie_app/movies/domain_layer/usecase/get_now_playing_usecase.dart';
final sl = GetIt.instance;
class ServicesLocator {


  void init() {
    sl.registerLazySingleton(() => GetNowPlayingUseCase(sl()));
    sl.registerLazySingleton<BaseMovieRepo>(() => MovieRepo(sl()));
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
