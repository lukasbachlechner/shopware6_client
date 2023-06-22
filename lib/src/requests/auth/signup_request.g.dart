// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequest _$SignupRequestFromJson(Map<String, dynamic> json) =>
    SignupRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      salutationId: ID.fromJson(json['salutationId'] as String),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      acceptedDataProtection: json['acceptedDataProtection'] as bool,
      storefrontUrl: json['storefrontUrl'] as String,
      guest: json['guest'] as bool? ?? false,
      billingAddress:
          AddressInput.fromJson(json['billingAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupRequestToJson(SignupRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'salutationId': instance.salutationId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'acceptedDataProtection': instance.acceptedDataProtection,
      'storefrontUrl': instance.storefrontUrl,
      'guest': instance.guest,
      'billingAddress': instance.billingAddress,
    };
