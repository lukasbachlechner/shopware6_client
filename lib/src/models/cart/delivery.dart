import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'delivery.g.dart';

@JsonSerializable()
class Delivery implements Model {
  final ID? id;
  final ShippingMethod? shippingMethod;
  final CalculatedPrice? shippingCosts;

  Delivery({
    this.id,
    this.shippingMethod,
    this.shippingCosts,
  });

  factory Delivery.fromJson(Json json) => _$DeliveryFromJson(json);

  @override
  Json toJson() => _$DeliveryToJson(this);
}
