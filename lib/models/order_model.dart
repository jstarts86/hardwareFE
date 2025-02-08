import 'package:hardware_fe/models/component_model.dart';
import 'package:hardware_fe/models/track_model.dart';

class OrderModel {
  final String orderId;
  final TrackModel selectedTrack;
  final List<ComponentModel> components;
  final DateTime createdAt;

  double get totalPrice {
    double sum = 0.0;

    for (final component in components) {
      sum += component.priceInStock;
    
    }
    return sum;
  }

  OrderModel({
    required this.orderId,
    required this.selectedTrack,
    required this.components,
    required this.createdAt,
  });

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'trackId': selectedTrack.id,
      'selectedComponents': components.map((c) => c.id).toList(),
      'createdAt': createdAt.toIso8601String(),
      'totalPrice': totalPrice,
    };
  }

  // Example fromJson method if you receive data from backend
  // (would require having a way to reconstruct track/components from IDs)
  factory OrderModel.fromJson(Map<String, dynamic> json, TrackModel track, List<ComponentModel> allComponents) {
    // This is an example approach. 
    // In a real scenario, you'd filter 'allComponents' to find the ones that match the IDs from json.
    final componentIds = List<String>.from(json['selectedComponents'] as List);
    final chosenComponents = allComponents.where((c) => componentIds.contains(c.id)).toList();
    return OrderModel(
      orderId: json['orderId'],
      selectedTrack: track, 
      components: chosenComponents,
      createdAt: DateTime.parse(json['createdAt']),
    );
  }


}
