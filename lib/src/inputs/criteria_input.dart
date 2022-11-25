import 'package:json_annotation/json_annotation.dart';

import '../contracts/contracts.dart';
import '../models/models.dart';
import '../types.dart';
import 'filters/filter.dart';

part 'criteria_input.g.dart';

@JsonSerializable(includeIfNull: false)
class CriteriaInput implements Model {
  final int? page;
  final int? limit;
  final List<Filter>? filter;

  CriteriaInput({
    this.page,
    this.limit,
    this.filter,
  });

  factory CriteriaInput.fromJson(Json json) => _$CriteriaInputFromJson(json);

  @override
  Json toJson() => _$CriteriaInputToJson(this);
}
