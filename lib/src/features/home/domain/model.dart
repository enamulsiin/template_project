class AllRegionModel {
  AllRegionModel({
    required this.tid,
    required this.name,
    required this.regionImage,
  });

  final String tid;
  final String name;
  final String regionImage;

  factory AllRegionModel.fromJson(Map<String, dynamic> json) => AllRegionModel(
    tid: json["tid"] ?? '',
    name: json["name"] ?? '',
    regionImage: json["region_image"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "tid": tid,
    "name": name,
    "region_image": regionImage,
  };
}
