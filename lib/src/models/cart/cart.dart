import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'cart.g.dart';

@JsonSerializable()
class Cart implements Model {
  final String? name;
  final String? token;
  final CartPrice? price;
  final List<LineItem>? lineItems;
  // final Map<String, CartError>? errors;
  final dynamic errors;
  // final List<dynamic>? transactions;
  final bool? modified;
  final String? customerComment;
  final String? affiliateCode;
  final String? campaignCode;
  final List<Delivery>? deliveries;

  Cart({
    this.name,
    this.token,
    this.price,
    this.lineItems,
    this.errors,
    // this.transactions,
    this.modified,
    this.customerComment,
    this.affiliateCode,
    this.campaignCode,
    this.deliveries,
  });

  factory Cart.fromJson(Json json) => _$CartFromJson(json);

  @override
  Json toJson() => _$CartToJson(this);
}
