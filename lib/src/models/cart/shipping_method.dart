import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'shipping_method.g.dart';

@JsonSerializable()
class ShippingMethod implements Model {
  final ID? id;
  final String? name;

  ShippingMethod({this.id, this.name});

  factory ShippingMethod.fromJson(Json json) => _$ShippingMethodFromJson(json);

  @override
  Json toJson() => _$ShippingMethodToJson(this);
}
