import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';

part 'price_aggregation.g.dart';

@JsonSerializable()
class PriceAggregation implements Model {
  final String? min;
  final String? max;
  final String? avg;
  final String? sum;

  PriceAggregation({
    this.min,
    this.max,
    this.avg,
    this.sum,
  });

  factory PriceAggregation.fromJson(Json json) =>
      _$PriceAggregationFromJson(json);

  @override
  Json toJson() => _$PriceAggregationToJson(this);
}
