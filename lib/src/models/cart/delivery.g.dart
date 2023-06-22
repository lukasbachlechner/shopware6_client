// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Delivery _$DeliveryFromJson(Map<String, dynamic> json) => Delivery(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      shippingMethod: json['shippingMethod'] == null
          ? null
          : ShippingMethod.fromJson(
              json['shippingMethod'] as Map<String, dynamic>),
      shippingCosts: json['shippingCosts'] == null
          ? null
          : CalculatedPrice.fromJson(
              json['shippingCosts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeliveryToJson(Delivery instance) => <String, dynamic>{
      'id': instance.id,
      'shippingMethod': instance.shippingMethod,
      'shippingCosts': instance.shippingCosts,
    };
