// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineItem _$LineItemFromJson(Map<String, dynamic> json) => LineItem(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      referencedId: json['referencedId'] == null
          ? null
          : ID.fromJson(json['referencedId'] as String),
      label: json['label'] as String?,
      quantity: json['quantity'] as int?,
      type: $enumDecodeNullable(_$LineItemTypeEnumMap, json['type']),
      payloadJson: json['payload'] as Map<String, dynamic>?,
      good: json['good'] as bool?,
      description: json['description'] as String?,
      removable: json['removable'] as bool?,
      stackable: json['stackable'] as bool?,
      modified: json['modified'] as bool?,
      price: json['price'] == null
          ? null
          : CalculatedPrice.fromJson(json['price'] as Map<String, dynamic>),
      cover: json['cover'] == null
          ? null
          : Media.fromJson(json['cover'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LineItemToJson(LineItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('referencedId', instance.referencedId);
  writeNotNull('label', instance.label);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('type', _$LineItemTypeEnumMap[instance.type]);
  writeNotNull('payload', instance.payloadJson);
  writeNotNull('good', instance.good);
  writeNotNull('description', instance.description);
  writeNotNull('removable', instance.removable);
  writeNotNull('stackable', instance.stackable);
  writeNotNull('modified', instance.modified);
  writeNotNull('price', instance.price);
  writeNotNull('cover', instance.cover);
  return val;
}

const _$LineItemTypeEnumMap = {
  LineItemType.product: 'product',
  LineItemType.promotion: 'promotion',
};
