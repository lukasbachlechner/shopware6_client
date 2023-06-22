// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingMethod _$ShippingMethodFromJson(Map<String, dynamic> json) =>
    ShippingMethod(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      name: json['name'] as String,
      active: json['active'] as bool,
      position: json['position'] as int,
      description: json['description'] as String?,
      trackingUrl: json['trackingUrl'] as String?,
      deliveryTimeId: ID.fromJson(json['deliveryTimeId'] as String),
      deliveryTime:
          DeliveryTime.fromJson(json['deliveryTime'] as Map<String, dynamic>),
      taxType: json['taxType'] as String,
      prices: (json['prices'] as List<dynamic>?)
          ?.map((e) => ShippingMethodPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ShippingMethodToJson(ShippingMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
      'position': instance.position,
      'description': instance.description,
      'trackingUrl': instance.trackingUrl,
      'deliveryTimeId': instance.deliveryTimeId,
      'deliveryTime': instance.deliveryTime,
      'taxType': instance.taxType,
      'prices': instance.prices,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
