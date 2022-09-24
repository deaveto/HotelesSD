class HotelModel {
  int id;
  String name;
  int starRating;
  String thumbnaiUrl;

  HotelModel(
      {required this.id,
      required this.name,
      required this.starRating,
      required this.thumbnaiUrl});

  factory HotelModel.fromJson(Map<String, dynamic> json) => HotelModel(
        id: json["id"] ?? '',
        name: json["name"] ?? '',
        starRating: json["starRating"] ?? '',
        thumbnaiUrl: json["optimizedThumbUrls"]["srpDesktop"] ?? '',
      );
}
