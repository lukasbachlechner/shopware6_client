import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';

part 'cart_tax_rule.g.dart';

@JsonSerializable()
class CartTaxRule implements Model {
  final double? taxRate;
  final double? percentage;

  CartTaxRule({
    this.taxRate,
    this.percentage,
  });

  factory CartTaxRule.fromJson(Json json) => _$CartTaxRuleFromJson(json);

  @override
  Json toJson() => _$CartTaxRuleToJson(this);
}
