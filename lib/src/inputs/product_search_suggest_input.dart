import 'package:json_annotation/json_annotation.dart';

import '../contracts/contracts.dart';
import '../types.dart';

part 'product_search_suggest_input.g.dart';

@JsonSerializable(includeIfNull: false)
class ProductSearchSuggestInput implements Model {
  final String search;

  @JsonKey(name: 'no-aggregations')
  final String? noAggregations;
  @JsonKey(name: 'only-aggregations')
  final String? onlyAggregations;

  ProductSearchSuggestInput({
    required this.search,
    this.noAggregations,
    this.onlyAggregations,
  });

  factory ProductSearchSuggestInput.fromJson(Json json) =>
      _$ProductSearchSuggestInputFromJson(json);

  @override
  Json toJson() => _$ProductSearchSuggestInputToJson(this);
}
