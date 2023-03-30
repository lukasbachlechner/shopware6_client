import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:shopware6_client/src/inputs/sort.dart';

import '../contracts/contracts.dart';
import '../models/models.dart';
import '../types.dart';
import 'filters/filter.dart';

part 'criteria_input.g.dart';

@JsonSerializable(includeIfNull: false)
class CriteriaInput extends Equatable implements Model {
  final int? page;
  final int? limit;
  final List<Filter>? filter;
  final List<Filter>? postFilter;
  final List<ID>? ids;
  final List<Sort>? sort;
  @JsonKey(name: 'total-count-mode')
  final int totalCountMode;
  final Map<String, dynamic>? associations;

  const CriteriaInput({
    this.page,
    this.limit,
    this.filter,
    this.postFilter,
    this.ids,
    this.sort,
    this.totalCountMode = 1,
    this.associations,
  });

  factory CriteriaInput.fromJson(Json json) => _$CriteriaInputFromJson(json);

  @override
  Json toJson() => _$CriteriaInputToJson(this);

  @override
  List<Object?> get props => [
        page,
        limit,
        filter,
        postFilter,
        ids,
        sort,
        associations,
      ];
}
