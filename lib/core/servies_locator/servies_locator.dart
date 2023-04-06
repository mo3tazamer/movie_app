import 'package:get_it/get_it.dart';
import 'package:movie_app/movies/data_layer/datasource/data_source_remote.dart';
import 'package:movie_app/movies/data_layer/repo/movie_repo.dart';
import 'package:movie_app/movies/domain_layer/repo/base_movie_repo.dart';
import 'package:movie_app/movies/domain_layer/usecase/get_now_playing_usecase.dart';
import 'package:movie_app/movies/persention_layer/controller/movie_bloc.dart';

import '../../movies/domain_layer/usecase/get_popular_usecase.dart';
import '../../movies/domain_layer/usecase/get_top_rated_usecase.dart';
final sl = GetIt.instance;
class ServicesLocator {


  void init() {
    sl.registerFactory(() => MovieBloc(sl(), sl(), sl()));
    sl.registerLazySingleton(() => GetNowPlayingUseCase(sl()));
    sl.registerLazySingleton(() => getPopularUseCase(sl()));
    sl.registerLazySingleton(() => getTopRatedUseCase(sl()));
    sl.registerLazySingleton<BaseMovieRepo>(() => MovieRepo(sl()));
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
