import 'package:json_annotation/json_annotation.dart';
import '../contracts/model.dart';
import '../types.dart';

part 'calculated_price.g.dart';

@JsonSerializable()
class CalculatedPrice implements Model {
  final double? unitPrice;
  final int? quantity;
  final double? totalPrice;

  CalculatedPrice({this.unitPrice, this.quantity, this.totalPrice});

  factory CalculatedPrice.fromJson(Json json) =>
      _$CalculatedPriceFromJson(json);

  @override
  Json toJson() => _$CalculatedPriceToJson(this);
}
