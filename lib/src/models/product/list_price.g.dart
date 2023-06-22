// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListPrice _$ListPriceFromJson(Map<String, dynamic> json) => ListPrice(
      price: (json['price'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      percentage: (json['percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ListPriceToJson(ListPrice instance) => <String, dynamic>{
      'price': instance.price,
      'discount': instance.discount,
      'percentage': instance.percentage,
    };
