class TrackModel {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final List<String> compatibleComponentIds;

  TrackModel({
    required this.id,
    required this.name,
    this.description = "",
    this.imageUrl= "",
    required this.compatibleComponentIds,
  });

}
