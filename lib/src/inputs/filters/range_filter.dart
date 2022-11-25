import 'package:json_annotation/json_annotation.dart';

import '../../types.dart';
import 'filter.dart';

part 'range_filter.g.dart';

class RangeFilter extends Filter {
  final RangeParams parameters;
  RangeFilter({
    required super.field,
    required this.parameters,
  }) : super(type: 'range');

  @override
  Json toJson() => {
        ...super.toJson(),
        'parameters': parameters,
      };
}

@JsonSerializable(includeIfNull: false)
class RangeParams {
  final int? gte;
  final int? lte;
  final int? gt;
  final int? lt;

  const RangeParams({
    this.gte,
    this.lte,
    this.gt,
    this.lt,
  });

  Json toJson() => _$RangeParamsToJson(this);
}
