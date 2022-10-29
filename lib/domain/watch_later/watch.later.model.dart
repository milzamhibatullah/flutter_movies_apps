class WatchLaterModel {
  List<WatchLaterResults>? results;

  WatchLaterModel({this.results});

  WatchLaterModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <WatchLaterResults>[];
      json['results'].forEach((v) {
        results!.add(WatchLaterResults.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WatchLaterResults {
  int? id;
  String? title;
  String? overview;
  bool? isMovie;
  String? posterPath;
  double? rating;

  WatchLaterResults(
      {this.id,
      this.title,
      this.overview,
      this.isMovie,
      this.posterPath,
      this.rating});

  WatchLaterResults.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    title = json['title'];
    overview = json['overview'].cast<int>();
    id = json['id'];
    isMovie = json['is_movie'];
    rating = double.parse(json['vote_average'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['poster_path'] = posterPath;
    data['title'] = title;
    data['overview'] = overview;
    data['rating'] = rating;
    data['is_movie'] = isMovie;

    return data;
  }
}
