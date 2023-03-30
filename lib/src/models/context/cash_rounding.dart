import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'cash_rounding.g.dart';

@JsonSerializable()
class CashRounding implements Model {
  final int decimals;
  final double interval;
  final bool roundForNet;

  CashRounding({
    required this.decimals,
    required this.interval,
    required this.roundForNet,
  });

  factory CashRounding.fromJson(Json json) => _$CashRoundingFromJson(json);

  @override
  Json toJson() => _$CashRoundingToJson(this);
}
