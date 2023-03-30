import 'package:json_annotation/json_annotation.dart';
import 'package:shopware6_client/src/models/context/core_context.dart';
import 'package:shopware6_client/src/models/context/currency.dart';
import 'package:shopware6_client/src/models/context/customer_group.dart';
import 'package:shopware6_client/src/models/context/sales_channel.dart';
import 'package:shopware6_client/src/models/context/shipping_location.dart';
import 'package:shopware6_client/src/models/context/tax.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'current_context.g.dart';

@JsonSerializable()
class CurrentContext implements Model {
  final String token;
  final bool rulesLocked;
  final bool? permissionsLocked;

  final CustomerGroup currentCustomerGroup;
  final CustomerGroup fallbackCustomerGroup;
  final Currency currency;
  final SalesChannel salesChannel;
  final List<Tax> taxRules;

  final PaymentMethod paymentMethod;
  final ShippingMethod shippingMethod;
  final ShippingLocation shippingLocation;

  final List<ID> rulesIds;

  final CoreContext context;

  CurrentContext({
    required this.token,
    required this.rulesLocked,
    this.permissionsLocked,
    required this.currentCustomerGroup,
    required this.fallbackCustomerGroup,
    required this.currency,
    required this.salesChannel,
    required this.taxRules,
    required this.paymentMethod,
    required this.shippingMethod,
    required this.shippingLocation,
    required this.rulesIds,
    required this.context,
  });

  factory CurrentContext.fromJson(Json json) => _$CurrentContextFromJson(json);

  @override
  Json toJson() => _$CurrentContextToJson(this);
}
