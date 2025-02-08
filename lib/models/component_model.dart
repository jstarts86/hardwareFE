abstract class ComponentModel {
  final String id;
  final String name;
  final String sku;
  final String description;
  final double priceInStock;
  final double priceCustom;
  final String imageUrl;
  final List<String> compatibleComponentIds;

  ComponentModel({
    required this.id,
    required this.name,
    required this.sku,
    required this.priceInStock,
    required this.priceCustom,
    this.description = "",
    this.imageUrl= "",
    required this.compatibleComponentIds,
  });

  String getDetails();

}
