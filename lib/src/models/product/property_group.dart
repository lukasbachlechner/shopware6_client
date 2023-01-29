import 'package:json_annotation/json_annotation.dart';

import '../../contracts/model.dart';
import '../../types.dart';
import '../id.dart';
import 'property_group_option.dart';

part 'property_group.g.dart';

@JsonSerializable()
class PropertyGroup implements Model {
  final ID? id;
  final String name;
  final String? description;
  final String displayType;
  final String sortingType;
  final bool? filterable;
  final bool? visibleOnProductDetailPage;
  final int? position;
  final Json? customFields;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final Json? translated;
  final List<PropertyGroupOption>? options;

  PropertyGroup({
    required this.id,
    required this.name,
    this.description,
    required this.displayType,
    required this.sortingType,
    this.filterable,
    this.visibleOnProductDetailPage,
    this.position,
    this.customFields,
    required this.createdAt,
    this.updatedAt,
    this.translated,
    this.options,
  });

  factory PropertyGroup.fromJson(Json json) => _$PropertyGroupFromJson(json);

  @override
  Json toJson() => _$PropertyGroupToJson(this);
}
