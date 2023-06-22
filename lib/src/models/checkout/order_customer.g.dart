// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCustomer _$OrderCustomerFromJson(Map<String, dynamic> json) =>
    OrderCustomer(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      versionId: json['versionId'] == null
          ? null
          : ID.fromJson(json['versionId'] as String),
      email: json['email'] as String,
      salutationId: ID.fromJson(json['salutationId'] as String),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      title: json['title'] as String?,
      customerNumber: json['customerNumber'] as String?,
      company: json['company'] as String?,
      vatIds:
          (json['vatIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
      salutation: json['salutation'] == null
          ? null
          : Salutation.fromJson(json['salutation'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$OrderCustomerToJson(OrderCustomer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'versionId': instance.versionId,
      'email': instance.email,
      'salutationId': instance.salutationId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'title': instance.title,
      'customerNumber': instance.customerNumber,
      'company': instance.company,
      'vatIds': instance.vatIds,
      'salutation': instance.salutation,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
