import '../models/models.dart';
import '../types.dart';
import 'criteria_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'language_criteria_response.g.dart';

@JsonSerializable()
class LanguageCriteriaResponse extends CriteriaResponse<Language> {
  LanguageCriteriaResponse({
    required super.elements,
    super.total,
    super.aggregations,
  });

  factory LanguageCriteriaResponse.fromJson(Json json) =>
      _$LanguageCriteriaResponseFromJson(json);
}
