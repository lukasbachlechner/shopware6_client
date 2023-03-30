import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'tax.g.dart';

@JsonSerializable()
class Tax implements Model {
  final ID? id;
  final int taxRate;
  final String name;
  final int position;
  final DateTime createdAt;
  final DateTime? updatedAt;

  Tax({
    this.id,
    required this.taxRate,
    required this.name,
    required this.position,
    required this.createdAt,
    this.updatedAt,
  });

  factory Tax.fromJson(Json json) => _$TaxFromJson(json);

  @override
  Json toJson() => _$TaxToJson(this);
}
