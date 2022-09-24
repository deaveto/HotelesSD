class HotelModel {
  int id;
  String name;
  int starRating;
  String thumbnaiUrl;
  String streetAddress;
  String current;
  int roomsLeft;
  int supplierHotelId;

  HotelModel(
      {required this.id,
      required this.name,
      required this.starRating,
      required this.thumbnaiUrl,
      required this.streetAddress,
      required this.current,
      required this.roomsLeft,
      required this.supplierHotelId});

  factory HotelModel.fromJson(Map<String, dynamic> json) => HotelModel(
        id: json["id"] ?? '',
        name: json["name"] ?? '',
        starRating: json["starRating"] ?? '',
        thumbnaiUrl: json["optimizedThumbUrls"]["srpDesktop"] ?? '',
        streetAddress: json["address"]["streetAddress"] ?? '',
        current: json["ratePlan"]["price"]["current"] ?? '',
        roomsLeft: json["roomsLeft"] ?? '',
        supplierHotelId: json["supplierHotelId"] ?? '',
      );
}
