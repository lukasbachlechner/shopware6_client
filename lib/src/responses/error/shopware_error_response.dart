import 'package:json_annotation/json_annotation.dart';

import '../../../shopware6_client.dart';

part 'shopware_error_response.g.dart';

@JsonSerializable()
class ShopwareErrorResponse implements Model {
  final List<ShopwareError> errors;

  ShopwareErrorResponse({
    required this.errors,
  });

  factory ShopwareErrorResponse.fromJson(Json json) =>
      _$ShopwareErrorResponseFromJson(json);

  @override
  Json toJson() => _$ShopwareErrorResponseToJson(this);
}
