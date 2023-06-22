// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_tax_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartTaxRule _$CartTaxRuleFromJson(Map<String, dynamic> json) => CartTaxRule(
      taxRate: (json['taxRate'] as num?)?.toDouble(),
      percentage: (json['percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CartTaxRuleToJson(CartTaxRule instance) =>
    <String, dynamic>{
      'taxRate': instance.taxRate,
      'percentage': instance.percentage,
    };
