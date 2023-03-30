import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';
import 'cash_rounding.dart';

part 'currency.g.dart';

@JsonSerializable()
class Currency implements Model {
  final ID? id;
  final String isoCode;
  final double factor;
  final String symbol;
  final String shortName;
  final String name;
  final int position;
  final bool isSystemDefault;
  final CashRounding itemRounding;
  final CashRounding totalRounding;

  final double taxFreeFrom;
  final DateTime createdAt;
  final DateTime? updatedAt;

  Currency({
    this.id,
    required this.isoCode,
    required this.factor,
    required this.symbol,
    required this.shortName,
    required this.name,
    required this.position,
    required this.isSystemDefault,
    required this.itemRounding,
    required this.totalRounding,
    required this.taxFreeFrom,
    required this.createdAt,
    this.updatedAt,
  });

  factory Currency.fromJson(Json json) => _$CurrencyFromJson(json);

  @override
  Json toJson() => _$CurrencyToJson(this);
}
