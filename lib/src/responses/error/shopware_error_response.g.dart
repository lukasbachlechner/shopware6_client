// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopware_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopwareErrorResponse _$ShopwareErrorResponseFromJson(
        Map<String, dynamic> json) =>
    ShopwareErrorResponse(
      errors: (json['errors'] as List<dynamic>)
          .map((e) => ShopwareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ShopwareErrorResponseToJson(
        ShopwareErrorResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
