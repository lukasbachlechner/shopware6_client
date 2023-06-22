// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_search_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductSearchInput _$ProductSearchInputFromJson(Map<String, dynamic> json) =>
    ProductSearchInput(
      search: json['search'] as String,
      order: json['order'] as String?,
      p: json['p'] as int?,
      manufacturer: json['manufacturer'] as String?,
      minPrice: (json['min-price'] as num?)?.toDouble(),
      maxPrice: (json['max-price'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      shippingFree: json['shipping-free'] as bool?,
      properties: json['properties'] as String?,
      manufacturerFilter: json['manufacturer-filter'] as String?,
      priceFilter: json['price-filter'] as bool?,
      ratingFilter: json['rating-filter'] as bool?,
      shippingFreeFilter: json['shipping-free-filter'] as bool?,
      propertyFilter: json['property-filter'] as bool?,
      propertyWhitelist: json['property-whitelist'] as String?,
      reduceAggregations: json['reduce-aggregations'] as String?,
      associations: json['associations'] as Map<String, dynamic>?,
      filter: (json['filter'] as List<dynamic>?)
          ?.map((e) => Filter.fromJson(e as Map<String, dynamic>))
          .toList(),
      ids: (json['ids'] as List<dynamic>?)
          ?.map((e) => ID.fromJson(e as String))
          .toList(),
      limit: json['limit'] as int?,
      postFilter: (json['postFilter'] as List<dynamic>?)
          ?.map((e) => Filter.fromJson(e as Map<String, dynamic>))
          .toList(),
      sort: (json['sort'] as List<dynamic>?)
          ?.map((e) => Sort.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCountMode: json['total-count-mode'] as int? ?? 1,
    );

Map<String, dynamic> _$ProductSearchInputToJson(ProductSearchInput instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'filter': instance.filter,
      'postFilter': instance.postFilter,
      'ids': instance.ids,
      'sort': instance.sort,
      'total-count-mode': instance.totalCountMode,
      'associations': instance.associations,
      'order': instance.order,
      'p': instance.p,
      'manufacturer': instance.manufacturer,
      'min-price': instance.minPrice,
      'max-price': instance.maxPrice,
      'rating': instance.rating,
      'shipping-free': instance.shippingFree,
      'properties': instance.properties,
      'manufacturer-filter': instance.manufacturerFilter,
      'price-filter': instance.priceFilter,
      'rating-filter': instance.ratingFilter,
      'shipping-free-filter': instance.shippingFreeFilter,
      'property-filter': instance.propertyFilter,
      'property-whitelist': instance.propertyWhitelist,
      'reduce-aggregations': instance.reduceAggregations,
      'search': instance.search,
    };
