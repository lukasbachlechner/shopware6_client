import 'package:json_annotation/json_annotation.dart';

import '../contracts/contracts.dart';
import '../models/models.dart';
import '../types.dart';

part 'context_patch_request.g.dart';

@JsonSerializable(includeIfNull: false)
class ContextPatchRequest implements Model {
  final ID? currencyId;
  final ID? languageId;
  final ID? billingAddressId;
  final ID? shippingAddressId;
  final ID? paymentMethodId;
  final ID? shippingMethodId;
  final ID? countryId;
  final ID? countryStateId;

  ContextPatchRequest({
    this.currencyId,
    this.languageId,
    this.billingAddressId,
    this.shippingAddressId,
    this.paymentMethodId,
    this.shippingMethodId,
    this.countryId,
    this.countryStateId,
  });

  factory ContextPatchRequest.fromJson(Json json) =>
      _$ContextPatchRequestFromJson(json);

  @override
  Json toJson() => _$ContextPatchRequestToJson(this);
}
