// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_aggregations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingAggregations _$ListingAggregationsFromJson(Map<String, dynamic> json) =>
    ListingAggregations(
      manufacturer: json['manufacturer'] == null
          ? null
          : ManufacturerAggregation.fromJson(
              json['manufacturer'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : PriceAggregation.fromJson(json['price'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : RatingAggregation.fromJson(json['rating'] as Map<String, dynamic>),
      shippingFree: json['shipping-free'] == null
          ? null
          : ShippingFreeAggregation.fromJson(
              json['shipping-free'] as Map<String, dynamic>),
      properties: json['properties'] == null
          ? null
          : PropertyAggregation.fromJson(
              json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListingAggregationsToJson(
        ListingAggregations instance) =>
    <String, dynamic>{
      'manufacturer': instance.manufacturer,
      'price': instance.price,
      'rating': instance.rating,
      'shipping-free': instance.shippingFree,
      'properties': instance.properties,
    };
