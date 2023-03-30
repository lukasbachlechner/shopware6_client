import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';

part 'product_sorting.g.dart';

@JsonSerializable()
class ProductSorting implements Model {
  final String key;
  final int priority;
  final String? label;
  final DateTime createdAt;
  final DateTime? updatedAt;

  ProductSorting({
    required this.key,
    required this.priority,
    this.label,
    required this.createdAt,
    this.updatedAt,
  });

  factory ProductSorting.fromJson(Json json) => _$ProductSortingFromJson(json);

  @override
  Json toJson() => _$ProductSortingToJson(this);
}
