import 'package:dartz/dartz.dart';
import 'package:movie_app_with_clean_arc/core/error/failure.dart';
import 'package:movie_app_with_clean_arc/core/usecase/base_usecase.dart';
import 'package:movie_app_with_clean_arc/movies/domain/entities/movie.dart';
import 'package:movie_app_with_clean_arc/movies/domain/repository/base_movies_repository.dart';

class GetNowPlayingMoviesUseCase
    extends BaseUseCase<List<Movie>, NoParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}
