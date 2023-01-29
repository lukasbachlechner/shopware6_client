import 'package:json_annotation/json_annotation.dart';
import 'package:shopware6_client/src/models/cart/cart_tax_calculated.dart';
import 'package:shopware6_client/src/models/cart/cart_tax_rule.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'cart_price.g.dart';

enum TaxStatus {
  gross,
  net,
  @JsonValue('tax-free')
  taxFree,
}

@JsonSerializable()
class CartPrice implements Model {
  final double? netPrice;
  final double? totalPrice;
  final double? positionPrice;
  final TaxStatus? taxStatus;
  final List<CartTaxCalculated>? calculatedTaxes;
  final List<CartTaxRule>? taxRules;

  CartPrice({
    this.netPrice,
    this.totalPrice,
    this.positionPrice,
    this.taxStatus,
    this.calculatedTaxes,
    this.taxRules,
  });

  factory CartPrice.fromJson(Json json) => _$CartPriceFromJson(json);

  @override
  Json toJson() => _$CartPriceToJson(this);
}
