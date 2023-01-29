import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';

part 'list_price.g.dart';

@JsonSerializable()
class ListPrice implements Model {
  final double? price;
  final double? discount;
  final double? percentage;

  ListPrice({this.price, this.discount, this.percentage});

  factory ListPrice.fromJson(Json json) => _$ListPriceFromJson(json);

  @override
  Json toJson() => _$ListPriceToJson(this);
}
