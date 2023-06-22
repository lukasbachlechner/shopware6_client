// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_sorting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductSorting _$ProductSortingFromJson(Map<String, dynamic> json) =>
    ProductSorting(
      key: json['key'] as String,
      priority: json['priority'] as int,
      label: json['label'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ProductSortingToJson(ProductSorting instance) =>
    <String, dynamic>{
      'key': instance.key,
      'priority': instance.priority,
      'label': instance.label,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
