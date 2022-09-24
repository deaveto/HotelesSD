class LocationModel {
  String group;
  String geoId;
  
  LocationModel({
    required this.group,
    required this.geoId,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        group: json["group"] ?? '',
        geoId: json["geoId"]["entities"] ?? '',
        
      );
}
