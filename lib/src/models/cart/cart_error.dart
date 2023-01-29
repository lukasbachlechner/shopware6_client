import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'cart_error.g.dart';

@JsonSerializable()
class CartError implements Model {
  final String? key;
  final int? level;
  final String? message;

  CartError({
    this.key,
    this.level,
    this.message,
  });

  factory CartError.fromJson(Json json) => _$CartErrorFromJson(json);

  @override
  Json toJson() => _$CartErrorToJson(this);
}
