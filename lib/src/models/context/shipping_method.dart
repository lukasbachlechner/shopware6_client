import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'shipping_method.g.dart';

@JsonSerializable()
class ShippingMethod implements Model {
  final ID? id;
  final String name;
  final bool active;
  final int position;
  final String? description;
  final String? trackingUrl;
  final ID deliveryTimeId;
  final DeliveryTime deliveryTime;
  final String taxType;
  final List<ShippingMethodPrice>? prices;

  final DateTime createdAt;
  final DateTime? updatedAt;

  ShippingMethod({
    this.id,
    required this.name,
    required this.active,
    required this.position,
    this.description,
    this.trackingUrl,
    required this.deliveryTimeId,
    required this.deliveryTime,
    required this.taxType,
    this.prices,
    required this.createdAt,
    this.updatedAt,
  });

  factory ShippingMethod.fromJson(Json json) => _$ShippingMethodFromJson(json);

  @override
  Json toJson() => _$ShippingMethodToJson(this);
}
