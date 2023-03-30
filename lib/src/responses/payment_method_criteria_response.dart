import '../models/models.dart';
import '../types.dart';
import 'criteria_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_method_criteria_response.g.dart';

@JsonSerializable()
class PaymentMethodCriteriaResponse extends CriteriaResponse<PaymentMethod> {
  PaymentMethodCriteriaResponse({
    required super.elements,
    super.total,
    super.aggregations,
  });

  factory PaymentMethodCriteriaResponse.fromJson(Json json) =>
      _$PaymentMethodCriteriaResponseFromJson(json);
}
