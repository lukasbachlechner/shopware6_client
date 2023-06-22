// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryTime _$DeliveryTimeFromJson(Map<String, dynamic> json) => DeliveryTime(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      name: json['name'] as String,
      min: json['min'] as int,
      max: json['max'] as int,
      unit: json['unit'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DeliveryTimeToJson(DeliveryTime instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'min': instance.min,
      'max': instance.max,
      'unit': instance.unit,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
