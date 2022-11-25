import 'package:json_annotation/json_annotation.dart';

import '../models/product.dart';
import '../types.dart';
import 'criteria_response.dart';

part 'product_criteria_response.g.dart';

@JsonSerializable()
class ProductCriteriaResponse extends CriteriaResponse<Product> {
  ProductCriteriaResponse({
    required super.elements,
    /* super.apiAlias,
    super.entity,
    super.total,
    super.aggregations,
    super.limit,
    super.page, */
  });

  factory ProductCriteriaResponse.fromJson(Json json) =>
      _$ProductCriteriaResponseFromJson(json);
}
