class HotelModel {
  String id;
  String name;
  String thumbnailUrl;
  String starRating;

  HotelModel({
    required this.id,
    required this.name,
    required this.thumbnailUrl,
    required this.starRating,
  });

  factory HotelModel.fromJson(Map<String, dynamic> json) => HotelModel(
        id: json["id"] ?? '',
        name: json["name"] ?? '',
        thumbnailUrl: json["thumbnailUrl"] ?? '',
        starRating: json["starRating"] ?? '',
      );
}
