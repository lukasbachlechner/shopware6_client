// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculated_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculatedPrice _$CalculatedPriceFromJson(Map<String, dynamic> json) =>
    CalculatedPrice(
      unitPrice: (json['unitPrice'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      listPrice: json['listPrice'] == null
          ? null
          : ListPrice.fromJson(json['listPrice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CalculatedPriceToJson(CalculatedPrice instance) =>
    <String, dynamic>{
      'unitPrice': instance.unitPrice,
      'quantity': instance.quantity,
      'totalPrice': instance.totalPrice,
      'listPrice': instance.listPrice,
    };
