import 'package:json_annotation/json_annotation.dart';
import 'package:shopware6_client/src/responses/listing_aggregations/price_aggregation.dart';
import 'package:shopware6_client/src/responses/listing_aggregations/rating_aggregation.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';
import 'manufacturer_aggregation.dart';
import 'property_aggregation.dart';
import 'shipping_free_aggregation.dart';

export 'manufacturer_aggregation.dart';
export 'price_aggregation.dart';
export 'property_aggregation.dart';
export 'rating_aggregation.dart';
export 'shipping_free_aggregation.dart';

part 'listing_aggregations.g.dart';

@JsonSerializable()
class ListingAggregations implements Model {
  final ManufacturerAggregation? manufacturer;
  final PriceAggregation? price;
  final RatingAggregation? rating;

  @JsonKey(name: 'shipping-free')
  final ShippingFreeAggregation? shippingFree;

  final PropertyAggregation? properties;

  ListingAggregations({
    this.manufacturer,
    this.price,
    this.rating,
    this.shippingFree,
    this.properties,
  });

  factory ListingAggregations.fromJson(Json json) =>
      _$ListingAggregationsFromJson(json);

  @override
  Json toJson() => _$ListingAggregationsToJson(this);
}
