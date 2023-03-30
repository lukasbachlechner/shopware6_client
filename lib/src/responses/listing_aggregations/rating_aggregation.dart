import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';

part 'rating_aggregation.g.dart';

@JsonSerializable()
class RatingAggregation implements Model {
  final String? max;

  RatingAggregation({this.max});

  factory RatingAggregation.fromJson(Json json) =>
      _$RatingAggregationFromJson(json);

  @override
  Json toJson() => _$RatingAggregationToJson(this);
}
