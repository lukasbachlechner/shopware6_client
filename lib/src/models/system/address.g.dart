// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      customerId: json['customerId'] == null
          ? null
          : ID.fromJson(json['customerId'] as String),
      countryId: ID.fromJson(json['countryId'] as String),
      countryStateId: json['countryStateId'] == null
          ? null
          : ID.fromJson(json['countryStateId'] as String),
      salutationId: json['salutationId'] == null
          ? null
          : ID.fromJson(json['salutationId'] as String),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      zipcode: json['zipcode'] as String?,
      city: json['city'] as String,
      company: json['company'] as String?,
      street: json['street'] as String,
      department: json['department'] as String?,
      title: json['title'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      additionalAddressLine1: json['additionalAddressLine1'] as String?,
      additionalAddressLine2: json['additionalAddressLine2'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
      salutation: json['salutation'] == null
          ? null
          : Salutation.fromJson(json['salutation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'countryId': instance.countryId,
      'countryStateId': instance.countryStateId,
      'salutationId': instance.salutationId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'zipcode': instance.zipcode,
      'city': instance.city,
      'company': instance.company,
      'street': instance.street,
      'department': instance.department,
      'title': instance.title,
      'phoneNumber': instance.phoneNumber,
      'additionalAddressLine1': instance.additionalAddressLine1,
      'additionalAddressLine2': instance.additionalAddressLine2,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'country': instance.country,
      'salutation': instance.salutation,
    };
