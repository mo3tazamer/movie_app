import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/movies/persention_layer/controller/movie_bloc.dart';
import 'package:shimmer/shimmer.dart';
import '../../../core/servies_locator/servies_locator.dart';
import '../../../core/util/app_constance.dart';
import '../../../core/util/enums.dart';


class GetPopularMoviesComponent extends StatelessWidget {
  const GetPopularMoviesComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MovieBloc>()..add(GetPopularMovies()),
      child: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          if (state.getPopularMoviesState == RequsetState.loading) {
            return const SizedBox(
                height: 170,
                child: Center(
                    child: CircularProgressIndicator(
                  color: Colors.black,
                )));
          } else {
            return FadeIn(
              duration: const Duration(milliseconds: 500),
              child: SizedBox(
                height: 170.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: state.getPopularMovies.length,
                  itemBuilder: (context, index) {
                    final movie = state.getPopularMovies[index];
                    return Container(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: () {
                          /// TODO : NAVIGATE TO  MOVIE DETAILS
                        },
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          child: CachedNetworkImage(
                            width: 120.0,
                            fit: BoxFit.cover,
                            imageUrl: ApiConstance.imageUrl(movie.backdropPath),
                            placeholder: (context, url) => Shimmer.fromColors(
                              baseColor: Colors.grey[850]!,
                              highlightColor: Colors.grey[800]!,
                              child: Container(
                                height: 170.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
