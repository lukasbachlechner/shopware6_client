import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'payment_method.g.dart';

@JsonSerializable()
class PaymentMethod implements Model {
  final ID? id;
  final String name;
  final String distinguishableName;
  final String description;
  final int position;
  final bool active;
  final bool afterOrderEnabled;
  final String shortName;

  final bool synchronous;
  final bool asynchronous;
  final bool prepared;
  final bool refundable;

  final DateTime createdAt;
  final DateTime? updatedAt;

  PaymentMethod({
    this.id,
    required this.name,
    required this.distinguishableName,
    required this.description,
    required this.position,
    required this.active,
    required this.afterOrderEnabled,
    required this.shortName,
    required this.synchronous,
    required this.asynchronous,
    required this.prepared,
    required this.refundable,
    required this.createdAt,
    this.updatedAt,
  });

  factory PaymentMethod.fromJson(Json json) => _$PaymentMethodFromJson(json);

  @override
  Json toJson() => _$PaymentMethodToJson(this);
}
