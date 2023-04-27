import 'package:json_annotation/json_annotation.dart';
import 'package:shopware6_client/src/models/checkout/order_customer.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'order.g.dart';

@JsonSerializable()
class Order implements Model {
  final ID? id;
  final ID? versionId;
  final String? orderNumber;
  final ID billingAddressId;
  final ID? billingAddressVersionId;
  final ID currencyId;
  final ID languageId;
  final ID salesChannelId;
  final DateTime orderDateTime;
  final String? orderDate;
  final CartPrice? price;
  final double amountTotal;
  final double amountNet;
  final double positionPrice;
  final String? taxStatus;
  final CalculatedPrice? shippingCosts;
  final double shippingTotal;
  final double currencyFactor;
  final String? deepLinkCode;
  final String? affiliateCode;
  final String? campaignCode;
  final String? customerComment;
  final ID? createdById;
  final ID? updatedById;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final OrderCustomer? orderCustomer;
  final Currency? currency;
  final Language? language;
  final List<Address>? addresses;
  final Address? billingAddress;
  final List<Delivery>? deliveries;
  final List<LineItem>? lineItems;

  Order({
    this.id,
    this.versionId,
    this.orderNumber,
    required this.billingAddressId,
    this.billingAddressVersionId,
    required this.currencyId,
    required this.languageId,
    required this.salesChannelId,
    required this.orderDateTime,
    this.orderDate,
    this.price,
    required this.amountTotal,
    required this.amountNet,
    required this.positionPrice,
    this.taxStatus,
    this.shippingCosts,
    required this.shippingTotal,
    required this.currencyFactor,
    this.deepLinkCode,
    this.affiliateCode,
    this.campaignCode,
    this.customerComment,
    this.createdById,
    this.updatedById,
    required this.createdAt,
    this.updatedAt,
    this.orderCustomer,
    this.currency,
    this.language,
    this.addresses,
    this.billingAddress,
    this.deliveries,
    this.lineItems,
  });

  factory Order.fromJson(Json json) => _$OrderFromJson(json);

  @override
  Json toJson() => _$OrderToJson(this);
}
