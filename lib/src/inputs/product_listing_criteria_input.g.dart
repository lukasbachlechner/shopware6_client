// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_listing_criteria_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductListingCriteriaInput _$ProductListingCriteriaInputFromJson(
        Map<String, dynamic> json) =>
    ProductListingCriteriaInput(
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

Map<String, dynamic> _$ProductListingCriteriaInputToJson(
    ProductListingCriteriaInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('limit', instance.limit);
  writeNotNull('filter', instance.filter);
  writeNotNull('postFilter', instance.postFilter);
  writeNotNull('ids', instance.ids);
  writeNotNull('sort', instance.sort);
  val['total-count-mode'] = instance.totalCountMode;
  writeNotNull('associations', instance.associations);
  writeNotNull('order', instance.order);
  writeNotNull('p', instance.p);
  writeNotNull('manufacturer', instance.manufacturer);
  writeNotNull('min-price', instance.minPrice);
  writeNotNull('max-price', instance.maxPrice);
  writeNotNull('rating', instance.rating);
  writeNotNull('shipping-free', instance.shippingFree);
  writeNotNull('properties', instance.properties);
  writeNotNull('manufacturer-filter', instance.manufacturerFilter);
  writeNotNull('price-filter', instance.priceFilter);
  writeNotNull('rating-filter', instance.ratingFilter);
  writeNotNull('shipping-free-filter', instance.shippingFreeFilter);
  writeNotNull('property-filter', instance.propertyFilter);
  writeNotNull('property-whitelist', instance.propertyWhitelist);
  writeNotNull('reduce-aggregations', instance.reduceAggregations);
  return val;
}
