import 'package:json_annotation/json_annotation.dart';
import 'package:shopware6_client/src/types.dart';

import 'filter_operator.dart';
import 'filters.dart';

part 'not_filter.g.dart';

@JsonSerializable()
class NotFilter extends Filter {
  final FilterOperator operator;
  final List<Filter> queries;

  NotFilter({
    required this.operator,
    required this.queries,
  }) : super(type: 'not');

  @override
  Json toJson() => {
        ...super.toJson(),
        ..._$NotFilterToJson(this),
      };
}
