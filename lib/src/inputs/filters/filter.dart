import 'package:json_annotation/json_annotation.dart';

import '../../types.dart';

part 'filter.g.dart';

@JsonSerializable(includeIfNull: false)
class Filter {
  final String type;
  final String? field;
  final Object? value;

  const Filter({
    required this.type,
    this.field,
    this.value,
  });

  factory Filter.fromJson(Json json) => _$FilterFromJson(json);

  Json toJson() => _$FilterToJson(this);
}
