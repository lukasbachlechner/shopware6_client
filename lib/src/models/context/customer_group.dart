import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'customer_group.g.dart';

@JsonSerializable()
class CustomerGroup implements Model {
  final ID? id;
  final String name;
  final DateTime createdAt;
  final DateTime? updatedAt;

  final bool displayGross;
  final bool registrationActive;
  final String? registrationTitle;

  CustomerGroup({
    this.id,
    required this.name,
    required this.createdAt,
    this.updatedAt,
    required this.displayGross,
    required this.registrationActive,
    this.registrationTitle,
  });

  factory CustomerGroup.fromJson(Json json) => _$CustomerGroupFromJson(json);

  @override
  Json toJson() => _$CustomerGroupToJson(this);
}
