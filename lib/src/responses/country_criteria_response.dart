import '../models/models.dart';
import '../types.dart';
import 'criteria_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country_criteria_response.g.dart';

@JsonSerializable()
class CountryCriteriaResponse extends CriteriaResponse<Country> {
  CountryCriteriaResponse({
    required super.elements,
    super.total,
    super.aggregations,
  });

  factory CountryCriteriaResponse.fromJson(Json json) =>
      _$CountryCriteriaResponseFromJson(json);
}
