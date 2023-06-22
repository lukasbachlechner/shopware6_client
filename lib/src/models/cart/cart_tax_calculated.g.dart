// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_tax_calculated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartTaxCalculated _$CartTaxCalculatedFromJson(Map<String, dynamic> json) =>
    CartTaxCalculated(
      tax: (json['tax'] as num?)?.toDouble(),
      taxRate: (json['taxRate'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CartTaxCalculatedToJson(CartTaxCalculated instance) =>
    <String, dynamic>{
      'tax': instance.tax,
      'taxRate': instance.taxRate,
      'price': instance.price,
    };
