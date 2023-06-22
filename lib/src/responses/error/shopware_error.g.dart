// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopware_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopwareError _$ShopwareErrorFromJson(Map<String, dynamic> json) =>
    ShopwareError(
      code: json['code'] as String,
      status: json['status'] as String,
      title: json['title'] as String,
      detail: json['detail'] as String,
    );

Map<String, dynamic> _$ShopwareErrorToJson(ShopwareError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'title': instance.title,
      'detail': instance.detail,
    };
