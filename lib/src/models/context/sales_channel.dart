import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'sales_channel.g.dart';

@JsonSerializable()
class SalesChannel implements Model {
  final ID? id;
  final ID languageId;
  final ID paymentMethodId;
  final ID shippingMethodId;
  final ID countryId;

  final ID navigationCategoryId;
  final ID navigationCategoryVersionId;
  final int navigationCategoryDepth;
  final ID? footerCategoryId;
  final ID? footerCategoryVersionId;
  final ID? serviceCategoryId;
  final ID? serviceCategoryVersionId;

  final String name;
  final String? shortName;
  final dynamic configuration;
  final bool active;
  final bool maintenance;
  final String taxCalculationType;
  final Currency currency;

  final ID customerGroupId;

  SalesChannel({
    this.id,
    required this.languageId,
    required this.paymentMethodId,
    required this.shippingMethodId,
    required this.countryId,
    required this.navigationCategoryId,
    required this.navigationCategoryVersionId,
    required this.navigationCategoryDepth,
    this.footerCategoryId,
    this.footerCategoryVersionId,
    this.serviceCategoryId,
    this.serviceCategoryVersionId,
    required this.name,
    this.shortName,
    this.configuration,
    required this.active,
    required this.maintenance,
    required this.taxCalculationType,
    required this.currency,
    required this.customerGroupId,
  });

  factory SalesChannel.fromJson(Json json) => _$SalesChannelFromJson(json);

  @override
  Json toJson() => _$SalesChannelToJson(this);
}
