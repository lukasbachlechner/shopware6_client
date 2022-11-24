// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_criteria_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryCriteriaResponse _$CategoryCriteriaResponseFromJson(
        Map<String, dynamic> json) =>
    CategoryCriteriaResponse(
      elements: (json['elements'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      apiAlias: json['apiAlias'] as String?,
      entity: json['entity'] as String?,
      total: json['total'] as int?,
      aggregations: (json['aggregations'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$CategoryCriteriaResponseToJson(
        CategoryCriteriaResponse instance) =>
    <String, dynamic>{
      'elements': instance.elements,
      'apiAlias': instance.apiAlias,
      'entity': instance.entity,
      'total': instance.total,
      'aggregations': instance.aggregations,
      'limit': instance.limit,
    };
