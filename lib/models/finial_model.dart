import 'package:hardware_fe/models/component_model.dart';

class FinialModel extends ComponentModel{
  final String diameter;

  FinialModel({
    required String id,
    required String name,
    required String sku,
    required double priceInStock,
    required double priceCustom,
    String description = "",
    String imageUrl = "",
    required List<String> compatibleComponentIds,
    required this.diameter,
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
    return "Finial: $name, Length: $diameter";
  }

}
