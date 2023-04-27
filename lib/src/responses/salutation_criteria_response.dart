import '../models/models.dart';
import '../types.dart';
import 'criteria_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'salutation_criteria_response.g.dart';

@JsonSerializable()
class SalutationCriteriaResponse extends CriteriaResponse<Salutation> {
  SalutationCriteriaResponse({
    required super.elements,
    super.total,
    super.aggregations,
  });

  factory SalutationCriteriaResponse.fromJson(Json json) =>
      _$SalutationCriteriaResponseFromJson(json);
}
