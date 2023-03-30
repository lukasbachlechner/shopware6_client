import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'delivery_time.g.dart';

@JsonSerializable()
class DeliveryTime implements Model {
  final ID? id;
  final String name;
  final int min;
  final int max;
  final String unit;

  final DateTime createdAt;
  final DateTime? updatedAt;

  DeliveryTime({
    this.id,
    required this.name,
    required this.min,
    required this.max,
    required this.unit,
    required this.createdAt,
    this.updatedAt,
  });

  factory DeliveryTime.fromJson(Json json) => _$DeliveryTimeFromJson(json);

  @override
  Json toJson() => _$DeliveryTimeToJson(this);
}
