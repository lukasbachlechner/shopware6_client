import 'package:json_annotation/json_annotation.dart';

import '../models/category.dart';
import '../types.dart';
import 'criteria_response.dart';

part 'category_criteria_response.g.dart';

@JsonSerializable()
class CategoryCriteriaResponse extends CriteriaResponse<Category> {
  CategoryCriteriaResponse({
    required super.elements,
    super.apiAlias,
    super.entity,
    super.total,
    super.aggregations,
    super.limit,
  });

  factory CategoryCriteriaResponse.fromJson(Json json) =>
      _$CategoryCriteriaResponseFromJson(json);
}
