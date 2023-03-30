import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'tax_free_config.g.dart';

@JsonSerializable()
class TaxFreeConfig implements Model {
  final ID currencyId;
  final bool enabled;
  final double amount;

  TaxFreeConfig({
    required this.currencyId,
    required this.enabled,
    required this.amount,
  });

  factory TaxFreeConfig.fromJson(Json json) => _$TaxFreeConfigFromJson(json);

  @override
  Json toJson() => _$TaxFreeConfigToJson(this);
}
