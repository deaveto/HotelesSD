class HotelModel {
  String name;
  double? starRating;
  String thumbnaiUrl;
  String streetAddress;
  String current;
  String roomsLeft;
  int supplierHotelId;

  HotelModel(
      {required this.name,
      this.starRating,
      required this.thumbnaiUrl,
      required this.streetAddress,
      required this.current,
      required this.roomsLeft,
      required this.supplierHotelId});

  factory HotelModel.fromJson(Map<String, dynamic> json) => HotelModel(
        name: json["name"] ?? '',
        starRating: json["starRating"] ?? '1.0',
        thumbnaiUrl: json["optimizedThumbUrls"]["srpDesktop"] ?? '',
        streetAddress: json["address"]["streetAddress"] ?? '',
        current: json["ratePlan"]["price"]["current"] ?? '',
        roomsLeft: json["roomsLeft"] ?? '0',
        supplierHotelId: json["supplierHotelId"] ?? '',
      );
}
