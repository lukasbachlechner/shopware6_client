import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'salutation.g.dart';

@JsonSerializable()
class Salutation implements Model {
  final ID? id;
  final String salutationKey;
  final String displayName;
  final String letterName;
  final DateTime createdAt;
  final DateTime? updatedAt;

  Salutation({
    this.id,
    required this.salutationKey,
    required this.displayName,
    required this.letterName,
    required this.createdAt,
    this.updatedAt,
  });

  factory Salutation.fromJson(Json json) => _$SalutationFromJson(json);

  @override
  Json toJson() => _$SalutationToJson(this);
}
