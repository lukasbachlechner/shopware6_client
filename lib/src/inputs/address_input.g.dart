// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressInput _$AddressInputFromJson(Map<String, dynamic> json) => AddressInput(
      customerId: json['customerId'] == null
          ? null
          : ID.fromJson(json['customerId'] as String),
      countryId: ID.fromJson(json['countryId'] as String),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      city: json['city'] as String,
      street: json['street'] as String,
      zipcode: json['zipcode'] as String?,
    );

Map<String, dynamic> _$AddressInputToJson(AddressInput instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'countryId': instance.countryId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'city': instance.city,
      'street': instance.street,
      'zipcode': instance.zipcode,
    };
