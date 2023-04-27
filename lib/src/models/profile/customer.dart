import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'customer.g.dart';

@JsonSerializable()
class Customer implements Model {
  final ID? id;
  final ID groupId;
  final ID defaultPaymentMethodId;
  final ID salesChannelId;
  final ID languageId;
  final ID? lastPaymentMethodId;
  final ID defaultBillingAddressId;
  final ID defaultShippingAddressId;
  final String customerNumber;
  final ID salutationId;
  final String firstName;
  final String lastName;
  final String? company;
  final String email;
  final String? title;
  final List<String>? vatIds;
  final String? affiliateCode;
  final String? campaignCode;
  final bool? active;
  final bool? doubleOptInRegistration;
  final DateTime? doubleOptInEmailSentDate;
  final String? doubleOptInConfirmDate;
  final String? hash;
  final bool? guest;
  final DateTime? firstLogin;
  final DateTime? lastLogin;
  final String? birthday;
  final DateTime? lastOrderDate;
  final int? orderCount;
  final double? orderTotalAmount;
  // final dynamic customFields;
  final List<ID>? tagIds;
  final ID? createdById;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final CustomerGroup? group;
  final PaymentMethod? defaultPaymentMethod;
  final Language? language;
  final PaymentMethod? lastPaymentMethod;
  final Address? defaultBillingAddress;
  final Address? defaultShippingAddress;
  final Salutation? salutation;
  final List<Address>? addresses;

  Customer({
    this.id,
    required this.groupId,
    required this.defaultPaymentMethodId,
    required this.salesChannelId,
    required this.languageId,
    this.lastPaymentMethodId,
    required this.defaultBillingAddressId,
    required this.defaultShippingAddressId,
    required this.customerNumber,
    required this.salutationId,
    required this.firstName,
    required this.lastName,
    this.company,
    required this.email,
    this.title,
    this.vatIds,
    this.affiliateCode,
    this.campaignCode,
    this.active,
    this.doubleOptInRegistration,
    this.doubleOptInEmailSentDate,
    this.doubleOptInConfirmDate,
    this.hash,
    this.guest,
    this.firstLogin,
    this.lastLogin,
    this.birthday,
    this.lastOrderDate,
    this.orderCount,
    this.orderTotalAmount,
    // this.customFields,
    this.tagIds,
    this.createdById,
    required this.createdAt,
    this.updatedAt,
    this.group,
    this.defaultPaymentMethod,
    this.language,
    this.lastPaymentMethod,
    this.defaultBillingAddress,
    this.defaultShippingAddress,
    this.salutation,
    this.addresses,
  });

  factory Customer.fromJson(Json json) => _$CustomerFromJson(json);

  @override
  Json toJson() => _$CustomerToJson(this);
}
