import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';

part 'cart_tax_calculated.g.dart';

@JsonSerializable()
class CartTaxCalculated implements Model {
  final double? tax;
  final double? taxRate;
  final double? price;

  CartTaxCalculated({
    this.tax,
    this.taxRate,
    this.price,
  });

  factory CartTaxCalculated.fromJson(Json json) =>
      _$CartTaxCalculatedFromJson(json);

  @override
  Json toJson() => _$CartTaxCalculatedToJson(this);
}
