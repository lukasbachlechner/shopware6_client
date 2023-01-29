import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';
import '../models.dart';

part 'calculated_price.g.dart';

@JsonSerializable()
class CalculatedPrice implements Model {
  final double? unitPrice;
  final int? quantity;
  final double? totalPrice;
  final ListPrice? listPrice;

  CalculatedPrice({
    this.unitPrice,
    this.quantity,
    this.totalPrice,
    this.listPrice,
  });

  factory CalculatedPrice.fromJson(Json json) =>
      _$CalculatedPriceFromJson(json);

  @override
  Json toJson() => _$CalculatedPriceToJson(this);
}
