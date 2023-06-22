// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cart _$CartFromJson(Map<String, dynamic> json) => Cart(
      name: json['name'] as String?,
      token: json['token'] as String?,
      price: json['price'] == null
          ? null
          : CartPrice.fromJson(json['price'] as Map<String, dynamic>),
      lineItems: (json['lineItems'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: json['errors'],
      modified: json['modified'] as bool?,
      customerComment: json['customerComment'] as String?,
      affiliateCode: json['affiliateCode'] as String?,
      campaignCode: json['campaignCode'] as String?,
      deliveries: (json['deliveries'] as List<dynamic>?)
          ?.map((e) => Delivery.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      'name': instance.name,
      'token': instance.token,
      'price': instance.price,
      'lineItems': instance.lineItems,
      'errors': instance.errors,
      'modified': instance.modified,
      'customerComment': instance.customerComment,
      'affiliateCode': instance.affiliateCode,
      'campaignCode': instance.campaignCode,
      'deliveries': instance.deliveries,
    };
