// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesChannel _$SalesChannelFromJson(Map<String, dynamic> json) => SalesChannel(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      languageId: ID.fromJson(json['languageId'] as String),
      paymentMethodId: ID.fromJson(json['paymentMethodId'] as String),
      shippingMethodId: ID.fromJson(json['shippingMethodId'] as String),
      countryId: ID.fromJson(json['countryId'] as String),
      navigationCategoryId: ID.fromJson(json['navigationCategoryId'] as String),
      navigationCategoryVersionId:
          ID.fromJson(json['navigationCategoryVersionId'] as String),
      navigationCategoryDepth: json['navigationCategoryDepth'] as int,
      footerCategoryId: json['footerCategoryId'] == null
          ? null
          : ID.fromJson(json['footerCategoryId'] as String),
      footerCategoryVersionId: json['footerCategoryVersionId'] == null
          ? null
          : ID.fromJson(json['footerCategoryVersionId'] as String),
      serviceCategoryId: json['serviceCategoryId'] == null
          ? null
          : ID.fromJson(json['serviceCategoryId'] as String),
      serviceCategoryVersionId: json['serviceCategoryVersionId'] == null
          ? null
          : ID.fromJson(json['serviceCategoryVersionId'] as String),
      name: json['name'] as String,
      shortName: json['shortName'] as String?,
      configuration: json['configuration'],
      active: json['active'] as bool,
      maintenance: json['maintenance'] as bool,
      taxCalculationType: json['taxCalculationType'] as String,
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
      customerGroupId: ID.fromJson(json['customerGroupId'] as String),
    );

Map<String, dynamic> _$SalesChannelToJson(SalesChannel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'languageId': instance.languageId,
      'paymentMethodId': instance.paymentMethodId,
      'shippingMethodId': instance.shippingMethodId,
      'countryId': instance.countryId,
      'navigationCategoryId': instance.navigationCategoryId,
      'navigationCategoryVersionId': instance.navigationCategoryVersionId,
      'navigationCategoryDepth': instance.navigationCategoryDepth,
      'footerCategoryId': instance.footerCategoryId,
      'footerCategoryVersionId': instance.footerCategoryVersionId,
      'serviceCategoryId': instance.serviceCategoryId,
      'serviceCategoryVersionId': instance.serviceCategoryVersionId,
      'name': instance.name,
      'shortName': instance.shortName,
      'configuration': instance.configuration,
      'active': instance.active,
      'maintenance': instance.maintenance,
      'taxCalculationType': instance.taxCalculationType,
      'currency': instance.currency,
      'customerGroupId': instance.customerGroupId,
    };
