// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_method_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingMethodPrice _$ShippingMethodPriceFromJson(Map<String, dynamic> json) =>
    ShippingMethodPrice(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      shippingMethodId: ID.fromJson(json['shippingMethodId'] as String),
      calculation: json['calculation'] as int?,
      quantityStart: json['quantityStart'] as int?,
      quantityEnd: json['quantityEnd'] as int?,
      currencyPrice: (json['currencyPrice'] as List<dynamic>)
          .map((e) => Price.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ShippingMethodPriceToJson(
        ShippingMethodPrice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shippingMethodId': instance.shippingMethodId,
      'calculation': instance.calculation,
      'quantityStart': instance.quantityStart,
      'quantityEnd': instance.quantityEnd,
      'currencyPrice': instance.currencyPrice,
    };
