// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_aggregation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceAggregation _$PriceAggregationFromJson(Map<String, dynamic> json) =>
    PriceAggregation(
      min: json['min'] as String?,
      max: json['max'] as String?,
      avg: json['avg'] as String?,
      sum: json['sum'] as String?,
    );

Map<String, dynamic> _$PriceAggregationToJson(PriceAggregation instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
      'avg': instance.avg,
      'sum': instance.sum,
    };
