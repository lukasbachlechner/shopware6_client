import 'package:json_annotation/json_annotation.dart';
import 'package:shopware6_client/src/models/context/cash_rounding.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'core_context.g.dart';

@JsonSerializable()
class CoreContext implements Model {
  final List<ID> languageIdChain;
  final ID versionId;
  final ID currencyId;
  final double currencyFactor;
  final String scope;
  final List<ID> ruleIds;
  final bool considerInheritance;
  final String taxState;
  final CashRounding rounding;

  CoreContext({
    required this.languageIdChain,
    required this.versionId,
    required this.currencyId,
    required this.currencyFactor,
    required this.scope,
    required this.ruleIds,
    required this.considerInheritance,
    required this.taxState,
    required this.rounding,
  });

  factory CoreContext.fromJson(Json json) => _$CoreContextFromJson(json);

  @override
  Json toJson() => _$CoreContextToJson(this);
}
