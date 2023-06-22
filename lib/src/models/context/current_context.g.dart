// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentContext _$CurrentContextFromJson(Map<String, dynamic> json) =>
    CurrentContext(
      token: json['token'] as String,
      rulesLocked: json['rulesLocked'] as bool,
      permissionsLocked: json['permissionsLocked'] as bool?,
      currentCustomerGroup: CustomerGroup.fromJson(
          json['currentCustomerGroup'] as Map<String, dynamic>),
      fallbackCustomerGroup: CustomerGroup.fromJson(
          json['fallbackCustomerGroup'] as Map<String, dynamic>),
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
      salesChannel:
          SalesChannel.fromJson(json['salesChannel'] as Map<String, dynamic>),
      taxRules: (json['taxRules'] as List<dynamic>)
          .map((e) => Tax.fromJson(e as Map<String, dynamic>))
          .toList(),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      paymentMethod:
          PaymentMethod.fromJson(json['paymentMethod'] as Map<String, dynamic>),
      shippingMethod: ShippingMethod.fromJson(
          json['shippingMethod'] as Map<String, dynamic>),
      shippingLocation: ShippingLocation.fromJson(
          json['shippingLocation'] as Map<String, dynamic>),
      rulesIds: (json['rulesIds'] as List<dynamic>)
          .map((e) => ID.fromJson(e as String))
          .toList(),
      context: CoreContext.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentContextToJson(CurrentContext instance) =>
    <String, dynamic>{
      'token': instance.token,
      'rulesLocked': instance.rulesLocked,
      'permissionsLocked': instance.permissionsLocked,
      'currentCustomerGroup': instance.currentCustomerGroup,
      'fallbackCustomerGroup': instance.fallbackCustomerGroup,
      'currency': instance.currency,
      'salesChannel': instance.salesChannel,
      'taxRules': instance.taxRules,
      'customer': instance.customer,
      'paymentMethod': instance.paymentMethod,
      'shippingMethod': instance.shippingMethod,
      'shippingLocation': instance.shippingLocation,
      'rulesIds': instance.rulesIds,
      'context': instance.context,
    };
