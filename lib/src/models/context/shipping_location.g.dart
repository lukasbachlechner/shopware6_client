// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingLocation _$ShippingLocationFromJson(Map<String, dynamic> json) =>
    ShippingLocation(
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
      state: json['state'],
      address: json['address'],
    );

Map<String, dynamic> _$ShippingLocationToJson(ShippingLocation instance) =>
    <String, dynamic>{
      'country': instance.country,
      'state': instance.state,
      'address': instance.address,
    };
