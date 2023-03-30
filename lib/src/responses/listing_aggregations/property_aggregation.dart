import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'property_aggregation.g.dart';

@JsonSerializable()
class PropertyAggregation implements Model {
  final List<PropertyGroup>? entities;

  PropertyAggregation({this.entities});

  factory PropertyAggregation.fromJson(Json json) =>
      _$PropertyAggregationFromJson(json);

  @override
  Json toJson() => _$PropertyAggregationToJson(this);
}
