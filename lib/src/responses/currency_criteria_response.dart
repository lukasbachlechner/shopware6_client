import '../models/models.dart';
import '../types.dart';
import 'criteria_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'currency_criteria_response.g.dart';

@JsonSerializable()
class CurrencyCriteriaResponse extends CriteriaResponse<Currency> {
  CurrencyCriteriaResponse({
    required super.elements,
    super.total,
    super.aggregations,
  });

  factory CurrencyCriteriaResponse.fromJson(Json json) =>
      _$CurrencyCriteriaResponseFromJson(json);
}
