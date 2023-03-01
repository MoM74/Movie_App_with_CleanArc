import 'package:movie_app_with_clean_arc/movies/domain/entities/recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({
    super.backdropPath,
    required super.id,
  });

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        id: json["id"],
        backdropPath: json["backdrop_path"] ?? '',
      );
}
