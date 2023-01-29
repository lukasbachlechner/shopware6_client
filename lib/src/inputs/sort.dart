import 'package:json_annotation/json_annotation.dart';

import '../contracts/contracts.dart';
import '../models/models.dart';
import '../types.dart';

part 'sort.g.dart';

enum SortDirection {
  asc('ASC'),
  desc('DESC');

  final String value;
  const SortDirection(this.value);

  @override
  String toString() => value;
}

@JsonSerializable()
class Sort {
  final String field;
  final SortDirection order;
  final bool? naturalSorting;

  Sort({
    required this.field,
    required this.order,
    this.naturalSorting = false,
  });

  factory Sort.fromJson(Json json) => _$SortFromJson(json);

  Json toJson() => _$SortToJson(this);
}
