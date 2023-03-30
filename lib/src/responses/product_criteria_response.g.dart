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
      listingAggregations:
          ProductCriteriaResponse.aggregationsFromJson(json['aggregations']),
      currentFilters: json['currentFilters'] as Map<String, dynamic>?,
      availableSortings: (json['availableSortings'] as List<dynamic>?)
          ?.map((e) => ProductSorting.fromJson(e as Map<String, dynamic>))
          .toList(),
      sorting: json['sorting'] as String?,
      apiAlias: json['apiAlias'] as String?,
      entity: json['entity'] as String?,
      total: json['total'] as int?,
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
      'limit': instance.limit,
      'page': instance.page,
      'currentFilters': instance.currentFilters,
      'availableSortings': instance.availableSortings,
      'sorting': instance.sorting,
      'aggregations': instance.listingAggregations,
    };
