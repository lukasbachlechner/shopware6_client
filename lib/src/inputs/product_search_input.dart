import 'package:json_annotation/json_annotation.dart';
import 'package:shopware6_client/src/inputs/inputs.dart';

import '../contracts/contracts.dart';
import '../models/models.dart';
import '../types.dart';

part 'product_search_input.g.dart';

@JsonSerializable()
class ProductSearchInput extends ProductListingCriteriaInput implements Model {
  final String search;

  ProductSearchInput({
    required this.search,
    super.order,
    super.p,
    super.manufacturer,
    super.minPrice,
    super.maxPrice,
    super.rating,
    super.shippingFree,
    super.properties,
    super.manufacturerFilter,
    super.priceFilter,
    super.ratingFilter,
    super.shippingFreeFilter,
    super.propertyFilter,
    super.propertyWhitelist,
    super.reduceAggregations,
    super.associations,
    super.filter,
    super.ids,
    super.limit,
    super.postFilter,
    super.sort,
    super.totalCountMode,
  });

  factory ProductSearchInput.fromJson(Json json) =>
      _$ProductSearchInputFromJson(json);

  @override
  Json toJson() => _$ProductSearchInputToJson(this);
}
