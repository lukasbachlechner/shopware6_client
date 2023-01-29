// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_criteria_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCriteriaResponse _$ProductCriteriaResponseFromJson(
        Map<String, dynamic> json) =>
    ProductCriteriaResponse(
      elements: (json['elements'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      apiAlias: json['apiAlias'] as String?,
      entity: json['entity'] as String?,
      total: json['total'] as int?,
      aggregations: (json['aggregations'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      limit: json['limit'] as int?,
      page: json['page'] as int?,
    );

Map<String, dynamic> _$ProductCriteriaResponseToJson(
        ProductCriteriaResponse instance) =>
    <String, dynamic>{
      'elements': instance.elements,
      'apiAlias': instance.apiAlias,
      'entity': instance.entity,
      'total': instance.total,
      'aggregations': instance.aggregations,
      'limit': instance.limit,
      'page': instance.page,
    };
