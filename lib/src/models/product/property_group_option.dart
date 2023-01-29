import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';
import '../models.dart';

part 'property_group_option.g.dart';

@JsonSerializable()
class PropertyGroupOption implements Model {
  final ID? id;
  final ID groupId;
  final String name;
  final int? position;
  final String? colorHexCode;
  final ID? mediaId;
  // final Json? customFields;
  final DateTime createdAt;
  final DateTime? updatedAt;
  // final Json? translated;
  final Media? media;
  // final Json? group;

  PropertyGroupOption({
    this.id,
    required this.groupId,
    required this.name,
    this.position,
    this.colorHexCode,
    this.mediaId,
    // this.customFields,
    required this.createdAt,
    this.updatedAt,
    // this.translated,
    this.media,
    // this.group,
  });

  factory PropertyGroupOption.fromJson(Json json) =>
      _$PropertyGroupOptionFromJson(json);

  @override
  Json toJson() => _$PropertyGroupOptionToJson(this);
}
