import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';

part 'shopware_error.g.dart';

@JsonSerializable()
class ShopwareError implements Model {
  final String code;
  final String status;
  final String title;
  final String detail;

  ShopwareError({
    required this.code,
    required this.status,
    required this.title,
    required this.detail,
  });

  factory ShopwareError.fromJson(Json json) => _$ShopwareErrorFromJson(json);

  @override
  Json toJson() => _$ShopwareErrorToJson(this);
}
