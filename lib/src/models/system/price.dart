import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'price.g.dart';

@JsonSerializable()
class Price implements Model {
  final ID? currencyId;
  final double? net;
  final double? gross;
  final bool? linked;

  Price({
    this.currencyId,
    this.net,
    this.gross,
    this.linked,
  });

  factory Price.fromJson(Json json) => _$PriceFromJson(json);

  @override
  Json toJson() => _$PriceToJson(this);
}
