import 'package:hardware_fe/models/component_model.dart';

class BracketModel extends ComponentModel{
  final String length;

  BracketModel({
    required String id,
    required String name,
    required String sku,
    required double priceInStock,
    required double priceCustom,
    String description = "",
    String imageUrl = "",
    required List<String> compatibleComponentIds,
    required this.length,
  }) : super(
      id: id,
      name: name,
      sku: sku,
      priceInStock: priceInStock,
      priceCustom: priceCustom,
      imageUrl: imageUrl,
      description: description,
      compatibleComponentIds: compatibleComponentIds,
    );

  @override
  String getDetails() {
    return "Bracket: $name, Length: $length";
  }

}
