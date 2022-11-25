// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import '../contracts/contracts.dart';
import '../types.dart';
import 'models.dart';

part 'payment_method.g.dart';

@JsonSerializable()
class PaymentMethod implements Model {
  final ID? id;
  final String name;
  final String? distinguishableName;
  final String? description;
  final int? position;
  final bool? active;
  final bool? afterOrderEnabled;
  // final CustomFields? customFields;
  final String? mediaId;
  final bool? synchronous;
  final bool? asynchronous;
  final bool? prepared;
  final bool? refundable;
  final DateTime createdAt;
  final DateTime? updatedAt;
  // final String? translated;
  // final Media? media;

  PaymentMethod({
    this.id,
    required this.name,
    this.distinguishableName,
    this.description,
    this.position,
    this.active,
    this.afterOrderEnabled,
    // this.customFields,
    this.mediaId,
    this.synchronous,
    this.asynchronous,
    this.prepared,
    this.refundable,
    required this.createdAt,
    this.updatedAt,
    // this.translated,
    // this.media,
  });

  factory PaymentMethod.fromJson(Json json) => _$PaymentMethodFromJson(json);

  @override
  Json toJson() => _$PaymentMethodToJson(this);
}
