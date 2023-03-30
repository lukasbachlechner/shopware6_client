import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';

part 'shipping_free_aggregation.g.dart';

@JsonSerializable()
class ShippingFreeAggregation implements Model {
  final String? max;

  ShippingFreeAggregation({
    this.max,
  });

  factory ShippingFreeAggregation.fromJson(Json json) =>
      _$ShippingFreeAggregationFromJson(json);

  @override
  Json toJson() => _$ShippingFreeAggregationToJson(this);
}
