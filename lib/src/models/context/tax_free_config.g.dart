// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_free_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaxFreeConfig _$TaxFreeConfigFromJson(Map<String, dynamic> json) =>
    TaxFreeConfig(
      currencyId: ID.fromJson(json['currencyId'] as String),
      enabled: json['enabled'] as bool,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$TaxFreeConfigToJson(TaxFreeConfig instance) =>
    <String, dynamic>{
      'currencyId': instance.currencyId,
      'enabled': instance.enabled,
      'amount': instance.amount,
    };
