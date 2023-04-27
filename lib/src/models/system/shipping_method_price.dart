import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'shipping_method_price.g.dart';

@JsonSerializable()
class ShippingMethodPrice implements Model {
  final ID? id;
  final ID shippingMethodId;
  final int? calculation;
  final int? quantityStart;
  final int? quantityEnd;
  final List<Price> currencyPrice;

  ShippingMethodPrice({
    this.id,
    required this.shippingMethodId,
    this.calculation,
    this.quantityStart,
    this.quantityEnd,
    required this.currencyPrice,
  });

  factory ShippingMethodPrice.fromJson(Json json) =>
      _$ShippingMethodPriceFromJson(json);

  @override
  Json toJson() => _$ShippingMethodPriceToJson(this);
}
