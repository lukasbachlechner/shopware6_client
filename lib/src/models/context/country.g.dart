// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      name: json['name'] as String,
      iso: json['iso'] as String,
      position: json['position'] as int,
      taxFree: json['taxFree'] as bool,
      active: json['active'] as bool,
      shippingAvailable: json['shippingAvailable'] as bool,
      iso3: json['iso3'] as String,
      displayStateInRegistration: json['displayStateInRegistration'] as bool,
      forceStateInRegistration: json['forceStateInRegistration'] as bool,
      companyTaxFree: json['companyTaxFree'] as bool,
      checkVatIdPattern: json['checkVatIdPattern'] as bool,
      vatIdPattern: json['vatIdPattern'] as String,
      vatIdRequired: json['vatIdRequired'] as bool,
      postalCodeRequired: json['postalCodeRequired'] as bool,
      checkPostalCodePattern: json['checkPostalCodePattern'] as bool,
      checkAdvancedPostalCodePattern:
          json['checkAdvancedPostalCodePattern'] as bool,
      advancedPostalCodePattern: json['advancedPostalCodePattern'] as String?,
      defaultPostalCodePattern: json['defaultPostalCodePattern'] as String,
      customerTax:
          TaxFreeConfig.fromJson(json['customerTax'] as Map<String, dynamic>),
      companyTax:
          TaxFreeConfig.fromJson(json['companyTax'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iso': instance.iso,
      'position': instance.position,
      'taxFree': instance.taxFree,
      'active': instance.active,
      'shippingAvailable': instance.shippingAvailable,
      'iso3': instance.iso3,
      'displayStateInRegistration': instance.displayStateInRegistration,
      'forceStateInRegistration': instance.forceStateInRegistration,
      'companyTaxFree': instance.companyTaxFree,
      'checkVatIdPattern': instance.checkVatIdPattern,
      'vatIdPattern': instance.vatIdPattern,
      'vatIdRequired': instance.vatIdRequired,
      'postalCodeRequired': instance.postalCodeRequired,
      'checkPostalCodePattern': instance.checkPostalCodePattern,
      'checkAdvancedPostalCodePattern': instance.checkAdvancedPostalCodePattern,
      'advancedPostalCodePattern': instance.advancedPostalCodePattern,
      'defaultPostalCodePattern': instance.defaultPostalCodePattern,
      'customerTax': instance.customerTax,
      'companyTax': instance.companyTax,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
