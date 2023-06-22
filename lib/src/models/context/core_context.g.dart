// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoreContext _$CoreContextFromJson(Map<String, dynamic> json) => CoreContext(
      languageIdChain: (json['languageIdChain'] as List<dynamic>)
          .map((e) => ID.fromJson(e as String))
          .toList(),
      versionId: ID.fromJson(json['versionId'] as String),
      currencyId: ID.fromJson(json['currencyId'] as String),
      currencyFactor: (json['currencyFactor'] as num).toDouble(),
      scope: json['scope'] as String,
      ruleIds: (json['ruleIds'] as List<dynamic>)
          .map((e) => ID.fromJson(e as String))
          .toList(),
      considerInheritance: json['considerInheritance'] as bool,
      taxState: json['taxState'] as String,
      rounding: CashRounding.fromJson(json['rounding'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoreContextToJson(CoreContext instance) =>
    <String, dynamic>{
      'languageIdChain': instance.languageIdChain,
      'versionId': instance.versionId,
      'currencyId': instance.currencyId,
      'currencyFactor': instance.currencyFactor,
      'scope': instance.scope,
      'ruleIds': instance.ruleIds,
      'considerInheritance': instance.considerInheritance,
      'taxState': instance.taxState,
      'rounding': instance.rounding,
    };
