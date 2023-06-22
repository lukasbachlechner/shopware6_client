// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      groupId: ID.fromJson(json['groupId'] as String),
      defaultPaymentMethodId:
          ID.fromJson(json['defaultPaymentMethodId'] as String),
      salesChannelId: ID.fromJson(json['salesChannelId'] as String),
      languageId: ID.fromJson(json['languageId'] as String),
      lastPaymentMethodId: json['lastPaymentMethodId'] == null
          ? null
          : ID.fromJson(json['lastPaymentMethodId'] as String),
      defaultBillingAddressId:
          ID.fromJson(json['defaultBillingAddressId'] as String),
      defaultShippingAddressId:
          ID.fromJson(json['defaultShippingAddressId'] as String),
      customerNumber: json['customerNumber'] as String,
      salutationId: ID.fromJson(json['salutationId'] as String),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      company: json['company'] as String?,
      email: json['email'] as String,
      title: json['title'] as String?,
      vatIds:
          (json['vatIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
      affiliateCode: json['affiliateCode'] as String?,
      campaignCode: json['campaignCode'] as String?,
      active: json['active'] as bool?,
      doubleOptInRegistration: json['doubleOptInRegistration'] as bool?,
      doubleOptInEmailSentDate: json['doubleOptInEmailSentDate'] == null
          ? null
          : DateTime.parse(json['doubleOptInEmailSentDate'] as String),
      doubleOptInConfirmDate: json['doubleOptInConfirmDate'] as String?,
      hash: json['hash'] as String?,
      guest: json['guest'] as bool?,
      firstLogin: json['firstLogin'] == null
          ? null
          : DateTime.parse(json['firstLogin'] as String),
      lastLogin: json['lastLogin'] == null
          ? null
          : DateTime.parse(json['lastLogin'] as String),
      birthday: json['birthday'] as String?,
      lastOrderDate: json['lastOrderDate'] == null
          ? null
          : DateTime.parse(json['lastOrderDate'] as String),
      orderCount: json['orderCount'] as int?,
      orderTotalAmount: (json['orderTotalAmount'] as num?)?.toDouble(),
      tagIds: (json['tagIds'] as List<dynamic>?)
          ?.map((e) => ID.fromJson(e as String))
          .toList(),
      createdById: json['createdById'] == null
          ? null
          : ID.fromJson(json['createdById'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      group: json['group'] == null
          ? null
          : CustomerGroup.fromJson(json['group'] as Map<String, dynamic>),
      defaultPaymentMethod: json['defaultPaymentMethod'] == null
          ? null
          : PaymentMethod.fromJson(
              json['defaultPaymentMethod'] as Map<String, dynamic>),
      language: json['language'] == null
          ? null
          : Language.fromJson(json['language'] as Map<String, dynamic>),
      lastPaymentMethod: json['lastPaymentMethod'] == null
          ? null
          : PaymentMethod.fromJson(
              json['lastPaymentMethod'] as Map<String, dynamic>),
      defaultBillingAddress: json['defaultBillingAddress'] == null
          ? null
          : Address.fromJson(
              json['defaultBillingAddress'] as Map<String, dynamic>),
      defaultShippingAddress: json['defaultShippingAddress'] == null
          ? null
          : Address.fromJson(
              json['defaultShippingAddress'] as Map<String, dynamic>),
      salutation: json['salutation'] == null
          ? null
          : Salutation.fromJson(json['salutation'] as Map<String, dynamic>),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'groupId': instance.groupId,
      'defaultPaymentMethodId': instance.defaultPaymentMethodId,
      'salesChannelId': instance.salesChannelId,
      'languageId': instance.languageId,
      'lastPaymentMethodId': instance.lastPaymentMethodId,
      'defaultBillingAddressId': instance.defaultBillingAddressId,
      'defaultShippingAddressId': instance.defaultShippingAddressId,
      'customerNumber': instance.customerNumber,
      'salutationId': instance.salutationId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'company': instance.company,
      'email': instance.email,
      'title': instance.title,
      'vatIds': instance.vatIds,
      'affiliateCode': instance.affiliateCode,
      'campaignCode': instance.campaignCode,
      'active': instance.active,
      'doubleOptInRegistration': instance.doubleOptInRegistration,
      'doubleOptInEmailSentDate':
          instance.doubleOptInEmailSentDate?.toIso8601String(),
      'doubleOptInConfirmDate': instance.doubleOptInConfirmDate,
      'hash': instance.hash,
      'guest': instance.guest,
      'firstLogin': instance.firstLogin?.toIso8601String(),
      'lastLogin': instance.lastLogin?.toIso8601String(),
      'birthday': instance.birthday,
      'lastOrderDate': instance.lastOrderDate?.toIso8601String(),
      'orderCount': instance.orderCount,
      'orderTotalAmount': instance.orderTotalAmount,
      'tagIds': instance.tagIds,
      'createdById': instance.createdById,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'group': instance.group,
      'defaultPaymentMethod': instance.defaultPaymentMethod,
      'language': instance.language,
      'lastPaymentMethod': instance.lastPaymentMethod,
      'defaultBillingAddress': instance.defaultBillingAddress,
      'defaultShippingAddress': instance.defaultShippingAddress,
      'salutation': instance.salutation,
      'addresses': instance.addresses,
    };
