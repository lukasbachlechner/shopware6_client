import 'package:json_annotation/json_annotation.dart';
import 'package:shopware6_client/src/contracts/line_item_payload.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'line_item.g.dart';

enum LineItemType {
  product,
  promotion,
}

@JsonSerializable(includeIfNull: false)
class LineItem implements Model {
  final ID? id;
  final ID? referencedId;
  final String? label;
  final int? quantity;

  final LineItemType? type;

  @JsonKey(name: 'payload')
  final Json? payloadJson;
  final bool? good;
  final String? description;
  final bool? removable;
  final bool? stackable;
  final bool? modified;
  final CalculatedPrice? price;
  final Media? cover;

  LineItem({
    this.id,
    this.referencedId,
    this.label,
    this.quantity,
    this.type,
    this.payloadJson,
    this.good,
    this.description,
    this.removable,
    this.stackable,
    this.modified,
    this.price,
    this.cover,
  });

  factory LineItem.fromJson(Json json) => _$LineItemFromJson(json);

  @override
  Json toJson() => _$LineItemToJson(this);

  LineItemPayload? get payload {
    if (payloadJson != null) {
      if (type == LineItemType.product) {
        List<LineItemProductOption> options = [];
        if (payloadJson!.containsKey('options')) {
          final List<dynamic> payloadOptions = payloadJson!['options'];
          if (payloadOptions.isNotEmpty) {
            options.addAll(payloadOptions.map(
              (jsonOption) => LineItemProductOption(
                group: jsonOption['group'],
                option: jsonOption['option'],
              ),
            ));
          }
        }

        if (payloadJson!.containsKey('features')) {
          final List<dynamic> payloadFeatures = payloadJson!['features'];
          if (payloadFeatures.isNotEmpty) {
            options.addAll(payloadFeatures.cast<Json>().map(
              (Json jsonFeature) {
                List<String> values = [];

                if (jsonFeature.containsKey('value') &&
                    jsonFeature['value'].isNotEmpty) {
                  final valuesObject = jsonFeature['value'] as Json;

                  for (final value in valuesObject.entries) {
                    values.add(value.value['name']);
                  }
                }

                return LineItemProductOption(
                  group: jsonFeature['label'],
                  option: values.join(', '),
                );
              },
            ));
          }
        }

        return LineItemProduct(
          original: Product.fromJson(payloadJson!),
          options: options,
        );
      }
    }
    return null;
  }
}

class LineItemProduct implements LineItemPayload {
  final Product? original;
  final List<LineItemProductOption>? options;

  LineItemProduct({this.original, this.options});
}

class LineItemProductOption {
  final String? option;
  final String? group;
  LineItemProductOption({this.group, this.option});
}
