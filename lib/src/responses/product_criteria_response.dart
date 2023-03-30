import 'package:json_annotation/json_annotation.dart';
import 'package:shopware6_client/src/responses/listing_aggregations/listing_aggregations.dart';

import '../models/models.dart';
import '../types.dart';
import 'criteria_response.dart';

part 'product_criteria_response.g.dart';

@JsonSerializable()
class ProductCriteriaResponse extends CriteriaResponse<Product> {
  final Json? currentFilters;
  final List<ProductSorting>? availableSortings;
  final String? sorting;

  @JsonKey(
    name: 'aggregations',
    fromJson: aggregationsFromJson,
  )
  final ListingAggregations listingAggregations;

  ProductCriteriaResponse({
    required super.elements,
    required this.listingAggregations,
    this.currentFilters,
    this.availableSortings,
    this.sorting,
    super.apiAlias,
    super.entity,
    super.total,
    super.limit,
    super.page,
  });

  factory ProductCriteriaResponse.fromJson(Json json) =>
      _$ProductCriteriaResponseFromJson(json);

  static aggregationsFromJson(dynamic passedAggregations) {
    Json aggregationsAsMap;
    if (passedAggregations is List && passedAggregations.isEmpty) {
      aggregationsAsMap = {};
    } else {
      aggregationsAsMap = passedAggregations;
    }

    return ListingAggregations.fromJson(aggregationsAsMap);
  }
}
