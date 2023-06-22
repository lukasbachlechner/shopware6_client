// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context_patch_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContextPatchRequest _$ContextPatchRequestFromJson(Map<String, dynamic> json) =>
    ContextPatchRequest(
      currencyId: json['currencyId'] == null
          ? null
          : ID.fromJson(json['currencyId'] as String),
      languageId: json['languageId'] == null
          ? null
          : ID.fromJson(json['languageId'] as String),
      billingAddressId: json['billingAddressId'] == null
          ? null
          : ID.fromJson(json['billingAddressId'] as String),
      shippingAddressId: json['shippingAddressId'] == null
          ? null
          : ID.fromJson(json['shippingAddressId'] as String),
      paymentMethodId: json['paymentMethodId'] == null
          ? null
          : ID.fromJson(json['paymentMethodId'] as String),
      shippingMethodId: json['shippingMethodId'] == null
          ? null
          : ID.fromJson(json['shippingMethodId'] as String),
      countryId: json['countryId'] == null
          ? null
          : ID.fromJson(json['countryId'] as String),
      countryStateId: json['countryStateId'] == null
          ? null
          : ID.fromJson(json['countryStateId'] as String),
    );

Map<String, dynamic> _$ContextPatchRequestToJson(ContextPatchRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currencyId', instance.currencyId);
  writeNotNull('languageId', instance.languageId);
  writeNotNull('billingAddressId', instance.billingAddressId);
  writeNotNull('shippingAddressId', instance.shippingAddressId);
  writeNotNull('paymentMethodId', instance.paymentMethodId);
  writeNotNull('shippingMethodId', instance.shippingMethodId);
  writeNotNull('countryId', instance.countryId);
  writeNotNull('countryStateId', instance.countryStateId);
  return val;
}
