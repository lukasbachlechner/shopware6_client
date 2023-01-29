import 'package:json_annotation/json_annotation.dart';

import '../models/models.dart';
import '../types.dart';

part 'product_detail_response.g.dart';

@JsonSerializable()
class ProductDetailResponse {
  final Product product;
  final List<PropertyGroup>? configurator;

  ProductDetailResponse({
    required this.product,
    this.configurator,
  });

  factory ProductDetailResponse.fromJson(Json json) =>
      _$ProductDetailResponseFromJson(json);
}
