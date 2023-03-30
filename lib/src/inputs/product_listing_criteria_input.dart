// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:shopware6_client/src/inputs/inputs.dart';

import '../contracts/contracts.dart';
import '../models/models.dart';
import '../types.dart';

part 'product_listing_criteria_input.g.dart';

@JsonSerializable(includeIfNull: false)
class ProductListingCriteriaInput extends CriteriaInput implements Model {
  /// Specifies the sorting of the products by `availableSortings`. If not set,
  /// the default sorting will be set according to the shop settings. The available
  /// sorting options are sent within the response under the `availableSortings` key.
  /// In order to sort by a field, consider using the `sort` parameter from the
  /// listing criteria. Do not use both parameters together, as it might
  /// lead to unexpected results.
  final String? order;

  /// Search result page
  /// Default: 1
  final int? p;

  /// Filter by manufacturers. List of manufacturer identifiers separated by a |.
  final String? manufacturer;

  /// Filters by a minimum product price. Has to be lower than the [maxPrice] filter.
  /// Default: 0
  @JsonKey(name: 'min-price')
  final double? minPrice;

  /// Filters by a maximum product price. Has to be higher than the [minPrice] filter.
  /// Default: 0
  @JsonKey(name: 'max-price')
  final double? maxPrice;

  /// Filter products with a minimum average rating.
  final double? rating;

  /// Filters products that are marked as shipping-free.
  /// Default: false
  @JsonKey(name: 'shipping-free')
  final bool? shippingFree;

  /// Filters products by their properties. List of property identifiers separated by a |.
  final String? properties;

  /// Enables/disabled filtering by manufacturer. If set to false,
  /// the [manufacturer] filter will be ignored. Also, the `aggregations[manufacturer]`
  /// key will be removed from the response.
  /// Default: true
  @JsonKey(name: 'manufacturer-filter')
  final String? manufacturerFilter;

  /// Enables/disabled filtering by price. If set to false,
  /// the [minPrice] and [maxPrice] filters will be ignored. Also, the `aggregations[price]`
  /// key will be removed from the response.
  /// Default: true
  @JsonKey(name: 'price-filter')
  final bool? priceFilter;

  /// Enables/disabled filtering by rating. If set to false,
  /// the [rating] filter will be ignored. Also, the `aggregations[rating]`
  /// key will be removed from the response.
  /// Default: true
  @JsonKey(name: 'rating-filter')
  final bool? ratingFilter;

  /// Enables/disabled filtering by shipping-free products. If set to false,
  /// the [shippingFree] filter will be ignored. Also, the `aggregations[shipping-free]`
  /// key will be removed from the response.
  /// Default: true
  @JsonKey(name: 'shipping-free-filter')
  final bool? shippingFreeFilter;

  /// Enables/disabled filtering by properties products. If set to false,
  /// the [properties] filter will be ignored. Also, the `aggregations[properties]`
  /// key will be removed from the response.
  /// Default: true
  @JsonKey(name: 'property-filter')
  final bool? propertyFilter;

  /// A whitelist of property identifiers which can be used for filtering.
  /// List of property identifiers separated by a |.
  /// The [propertyFilter] must be true; otherwise, the whitelist has no effect.
  @JsonKey(name: 'property-whitelist')
  final String? propertyWhitelist;

  /// By sending the parameter reduce-aggregations, the post-filters that the
  /// customer applied are also applied to the aggregations. This has the
  /// consequence that only values are returned in the aggregations,
  /// leading to further filter results. This parameter is a flag,
  /// and the value has no effect.
  @JsonKey(name: 'reduce-aggregations')
  final String? reduceAggregations;

  const ProductListingCriteriaInput({
    this.order,
    this.p,
    this.manufacturer,
    this.minPrice,
    this.maxPrice,
    this.rating,
    this.shippingFree,
    this.properties,
    this.manufacturerFilter,
    this.priceFilter,
    this.ratingFilter,
    this.shippingFreeFilter,
    this.propertyFilter,
    this.propertyWhitelist,
    this.reduceAggregations,
    super.associations,
    super.filter,
    super.ids,
    super.limit,
    super.postFilter,
    super.sort,
    super.totalCountMode,
  });

  ProductListingCriteriaInput copyWith({
    order,
    p,
    manufacturer,
    double? minPrice,
    double? maxPrice,
    double? rating,
    shippingFree,
    properties,
    manufacturerFilter,
    priceFilter,
    ratingFilter,
    shippingFreeFilter,
    propertyFilter,
    propertyWhitelist,
    reduceAggregations,
    associations,
    filter,
    ids,
    limit,
    postFilter,
    sort,
    totalCountMode,
  }) {
    return ProductListingCriteriaInput(
      order: order ?? this.order,
      p: p ?? this.p,
      manufacturer: manufacturer ?? this.manufacturer,
      minPrice: minPrice ?? this.minPrice,
      maxPrice: maxPrice ?? this.maxPrice,
      rating: rating ?? this.rating,
      shippingFree: shippingFree ?? this.shippingFree,
      properties: properties ?? this.properties,
      manufacturerFilter: manufacturerFilter ?? this.manufacturerFilter,
      priceFilter: priceFilter ?? this.priceFilter,
      ratingFilter: ratingFilter ?? this.ratingFilter,
      shippingFreeFilter: shippingFreeFilter ?? this.shippingFreeFilter,
      propertyFilter: propertyFilter ?? this.propertyFilter,
      propertyWhitelist: propertyWhitelist ?? this.propertyWhitelist,
      reduceAggregations: reduceAggregations ?? this.reduceAggregations,
      associations: associations ?? this.associations,
      filter: filter ?? this.filter,
      ids: ids ?? this.ids,
      limit: limit ?? this.limit,
      postFilter: postFilter ?? this.postFilter,
      sort: sort ?? this.sort,
      totalCountMode: totalCountMode ?? this.totalCountMode,
    );
  }

  factory ProductListingCriteriaInput.fromJson(Json json) =>
      _$ProductListingCriteriaInputFromJson(json);

  @override
  Json toJson() => _$ProductListingCriteriaInputToJson(this);

  @override
  String toString() {
    return 'ProductListingCriteriaInput(order: $order, p: $p, manufacturer: $manufacturer, minPrice: $minPrice, maxPrice: $maxPrice, rating: $rating, shippingFree: $shippingFree, properties: $properties, manufacturerFilter: $manufacturerFilter, priceFilter: $priceFilter, ratingFilter: $ratingFilter, shippingFreeFilter: $shippingFreeFilter, propertyFilter: $propertyFilter, propertyWhitelist: $propertyWhitelist, reduceAggregations: $reduceAggregations)';
  }

  @override
  bool operator ==(covariant ProductListingCriteriaInput other) {
    if (identical(this, other)) return true;

    return other.order == order &&
        other.p == p &&
        other.manufacturer == manufacturer &&
        other.minPrice == minPrice &&
        other.maxPrice == maxPrice &&
        other.rating == rating &&
        other.shippingFree == shippingFree &&
        other.properties == properties &&
        other.manufacturerFilter == manufacturerFilter &&
        other.priceFilter == priceFilter &&
        other.ratingFilter == ratingFilter &&
        other.shippingFreeFilter == shippingFreeFilter &&
        other.propertyFilter == propertyFilter &&
        other.propertyWhitelist == propertyWhitelist &&
        other.reduceAggregations == reduceAggregations;
  }

  @override
  int get hashCode {
    return order.hashCode ^
        p.hashCode ^
        manufacturer.hashCode ^
        minPrice.hashCode ^
        maxPrice.hashCode ^
        rating.hashCode ^
        shippingFree.hashCode ^
        properties.hashCode ^
        manufacturerFilter.hashCode ^
        priceFilter.hashCode ^
        ratingFilter.hashCode ^
        shippingFreeFilter.hashCode ^
        propertyFilter.hashCode ^
        propertyWhitelist.hashCode ^
        reduceAggregations.hashCode;
  }
}
