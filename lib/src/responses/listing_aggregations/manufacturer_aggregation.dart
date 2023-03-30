import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';

part 'manufacturer_aggregation.g.dart';

@JsonSerializable()
class ManufacturerAggregation implements Model {
  final List<dynamic>? entities;

  ManufacturerAggregation({this.entities});

  factory ManufacturerAggregation.fromJson(Json json) =>
      _$ManufacturerAggregationFromJson(json);

  @override
  Json toJson() => _$ManufacturerAggregationToJson(this);
}
