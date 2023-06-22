// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tax _$TaxFromJson(Map<String, dynamic> json) => Tax(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      taxRate: json['taxRate'] as int,
      name: json['name'] as String,
      position: json['position'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$TaxToJson(Tax instance) => <String, dynamic>{
      'id': instance.id,
      'taxRate': instance.taxRate,
      'name': instance.name,
      'position': instance.position,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
