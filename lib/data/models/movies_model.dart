class MoviesModel {
  final String title;
  final String year;
  final String ageRating;
  final String duration;
  final String description;
  final String imageUrl;
  final String ranking;
  final String cast;
  final String director;

  MoviesModel({
    required this.title,
    required this.year,
    required this.ageRating,
    required this.duration,
    required this.description,
    required this.imageUrl,
    required this.ranking,
    required this.cast,
    required this.director,
  });

  factory MoviesModel.fromMap(Map<String, dynamic> data) {
    return MoviesModel(
      title: data['title'],
      year: data['year'],
      ageRating: data['ageRating'],
      duration: data['duration'],
      description: data['description'],
      imageUrl: data['imageUrl'],
      ranking: data['ranking'],
      cast: data['cast'],
      director: data['director'],
    );
  }
}
