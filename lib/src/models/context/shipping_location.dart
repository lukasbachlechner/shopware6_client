import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';
import 'country.dart';

part 'shipping_location.g.dart';

@JsonSerializable()
class ShippingLocation implements Model {
  final Country country;
  final dynamic state;
  final dynamic address;

  ShippingLocation({
    required this.country,
    this.state,
    this.address,
  });

  factory ShippingLocation.fromJson(Json json) =>
      _$ShippingLocationFromJson(json);

  @override
  Json toJson() => _$ShippingLocationToJson(this);
}
