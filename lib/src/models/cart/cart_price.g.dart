// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartPrice _$CartPriceFromJson(Map<String, dynamic> json) => CartPrice(
      netPrice: (json['netPrice'] as num?)?.toDouble(),
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      positionPrice: (json['positionPrice'] as num?)?.toDouble(),
      taxStatus: $enumDecodeNullable(_$TaxStatusEnumMap, json['taxStatus']),
      calculatedTaxes: (json['calculatedTaxes'] as List<dynamic>?)
          ?.map((e) => CartTaxCalculated.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxRules: (json['taxRules'] as List<dynamic>?)
          ?.map((e) => CartTaxRule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartPriceToJson(CartPrice instance) => <String, dynamic>{
      'netPrice': instance.netPrice,
      'totalPrice': instance.totalPrice,
      'positionPrice': instance.positionPrice,
      'taxStatus': _$TaxStatusEnumMap[instance.taxStatus],
      'calculatedTaxes': instance.calculatedTaxes,
      'taxRules': instance.taxRules,
    };

const _$TaxStatusEnumMap = {
  TaxStatus.gross: 'gross',
  TaxStatus.net: 'net',
  TaxStatus.taxFree: 'tax-free',
};
