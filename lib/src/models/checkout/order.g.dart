// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      versionId: json['versionId'] == null
          ? null
          : ID.fromJson(json['versionId'] as String),
      orderNumber: json['orderNumber'] as String?,
      billingAddressId: ID.fromJson(json['billingAddressId'] as String),
      billingAddressVersionId: json['billingAddressVersionId'] == null
          ? null
          : ID.fromJson(json['billingAddressVersionId'] as String),
      currencyId: ID.fromJson(json['currencyId'] as String),
      languageId: ID.fromJson(json['languageId'] as String),
      salesChannelId: ID.fromJson(json['salesChannelId'] as String),
      orderDateTime: DateTime.parse(json['orderDateTime'] as String),
      orderDate: json['orderDate'] as String?,
      price: json['price'] == null
          ? null
          : CartPrice.fromJson(json['price'] as Map<String, dynamic>),
      amountTotal: (json['amountTotal'] as num).toDouble(),
      amountNet: (json['amountNet'] as num).toDouble(),
      positionPrice: (json['positionPrice'] as num).toDouble(),
      taxStatus: json['taxStatus'] as String?,
      shippingCosts: json['shippingCosts'] == null
          ? null
          : CalculatedPrice.fromJson(
              json['shippingCosts'] as Map<String, dynamic>),
      shippingTotal: (json['shippingTotal'] as num).toDouble(),
      currencyFactor: (json['currencyFactor'] as num).toDouble(),
      deepLinkCode: json['deepLinkCode'] as String?,
      affiliateCode: json['affiliateCode'] as String?,
      campaignCode: json['campaignCode'] as String?,
      customerComment: json['customerComment'] as String?,
      createdById: json['createdById'] == null
          ? null
          : ID.fromJson(json['createdById'] as String),
      updatedById: json['updatedById'] == null
          ? null
          : ID.fromJson(json['updatedById'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      orderCustomer: json['orderCustomer'] == null
          ? null
          : OrderCustomer.fromJson(
              json['orderCustomer'] as Map<String, dynamic>),
      currency: json['currency'] == null
          ? null
          : Currency.fromJson(json['currency'] as Map<String, dynamic>),
      language: json['language'] == null
          ? null
          : Language.fromJson(json['language'] as Map<String, dynamic>),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
      billingAddress: json['billingAddress'] == null
          ? null
          : Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
      deliveries: (json['deliveries'] as List<dynamic>?)
          ?.map((e) => Delivery.fromJson(e as Map<String, dynamic>))
          .toList(),
      lineItems: (json['lineItems'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'versionId': instance.versionId,
      'orderNumber': instance.orderNumber,
      'billingAddressId': instance.billingAddressId,
      'billingAddressVersionId': instance.billingAddressVersionId,
      'currencyId': instance.currencyId,
      'languageId': instance.languageId,
      'salesChannelId': instance.salesChannelId,
      'orderDateTime': instance.orderDateTime.toIso8601String(),
      'orderDate': instance.orderDate,
      'price': instance.price,
      'amountTotal': instance.amountTotal,
      'amountNet': instance.amountNet,
      'positionPrice': instance.positionPrice,
      'taxStatus': instance.taxStatus,
      'shippingCosts': instance.shippingCosts,
      'shippingTotal': instance.shippingTotal,
      'currencyFactor': instance.currencyFactor,
      'deepLinkCode': instance.deepLinkCode,
      'affiliateCode': instance.affiliateCode,
      'campaignCode': instance.campaignCode,
      'customerComment': instance.customerComment,
      'createdById': instance.createdById,
      'updatedById': instance.updatedById,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'orderCustomer': instance.orderCustomer,
      'currency': instance.currency,
      'language': instance.language,
      'addresses': instance.addresses,
      'billingAddress': instance.billingAddress,
      'deliveries': instance.deliveries,
      'lineItems': instance.lineItems,
    };
