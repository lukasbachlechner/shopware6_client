import '../models/models.dart';
import '../types.dart';
import 'criteria_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shipping_method_criteria_response.g.dart';

@JsonSerializable()
class ShippingMethodCriteriaResponse extends CriteriaResponse<ShippingMethod> {
  ShippingMethodCriteriaResponse({
    required super.elements,
    super.total,
    super.aggregations,
  });

  factory ShippingMethodCriteriaResponse.fromJson(Json json) =>
      _$ShippingMethodCriteriaResponseFromJson(json);
}
