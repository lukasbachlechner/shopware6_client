import 'package:json_annotation/json_annotation.dart';
import 'package:shopware6_client/src/types.dart';

import 'filters.dart';

part 'multi_filter.g.dart';

@JsonSerializable()
class MultiFilter extends Filter {
  final FilterOperator operator;
  final List<Filter> queries;

  MultiFilter({
    required this.operator,
    required this.queries,
  }) : super(type: 'multi');

  @override
  Json toJson() => {
        ...super.toJson(),
        ..._$MultiFilterToJson(this),
      };
}
