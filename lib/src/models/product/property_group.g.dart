// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyGroup _$PropertyGroupFromJson(Map<String, dynamic> json) =>
    PropertyGroup(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      name: json['name'] as String,
      description: json['description'] as String?,
      displayType: json['displayType'] as String,
      sortingType: json['sortingType'] as String,
      filterable: json['filterable'] as bool?,
      visibleOnProductDetailPage: json['visibleOnProductDetailPage'] as bool?,
      position: json['position'] as int?,
      customFields: json['customFields'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      translated: json['translated'] as Map<String, dynamic>?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => PropertyGroupOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PropertyGroupToJson(PropertyGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'displayType': instance.displayType,
      'sortingType': instance.sortingType,
      'filterable': instance.filterable,
      'visibleOnProductDetailPage': instance.visibleOnProductDetailPage,
      'position': instance.position,
      'customFields': instance.customFields,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'translated': instance.translated,
      'options': instance.options,
    };
